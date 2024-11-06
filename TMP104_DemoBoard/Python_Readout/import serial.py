import serial
import time

# Configure the serial connection (COM7 for FTDI)
ser = serial.Serial(
    port='COM7',         # FTDI adapter on COM7
    baudrate=38400,      # Set baud rate to 38400
    bytesize=serial.EIGHTBITS,  # 8 data bits
    parity=serial.PARITY_EVEN,  # Even parity
    stopbits=serial.STOPBITS_ONE,  # 1 stop bit
    timeout=1            # Set timeout for reading
)

# Command constants
GET_STATUS = b'HGS'      # Command to check status
GET_VOLTAGE = b'HGV'     # Command to get voltage

# Function to calculate checksum
def calculate_checksum(command_bytes):
    checksum = sum(command_bytes) & 0xFF
    return checksum

# Function to send a command with checksum and receive response
def send_command(command):
    # Construct the full command with STX, command, ETX, checksum, and CR
    command_bytes = bytearray([0x02]) + command + bytearray([0x03])
    checksum = calculate_checksum(command_bytes)
    command_bytes += bytearray([checksum, 0x0D])

    print("Sending command:", command_bytes)
    ser.write(command_bytes)  # Send the command over serial
    time.sleep(1)  # Wait for response

    response = ser.read(ser.in_waiting)  # Read all available bytes
    print("Received response:", response)
    return response

# Function to repeatedly check PSU status
def check_status_and_voltage(retries=5, delay=2):
    for attempt in range(retries):
        print(f"Status check attempt {attempt + 1}")

        # Send the HGS (status) command
        status_response = send_command(GET_STATUS)
        if status_response and b'0002' not in status_response:
            print("Received valid status response:", status_response)
            return status_response  # Stop if we get a valid response

        # Send the HGV (voltage) command as an alternate test
        print("Sending HGV (voltage) command as an alternate test")
        voltage_response = send_command(GET_VOLTAGE)
        if voltage_response and b'0002' not in voltage_response:
            print("Received valid voltage response:", voltage_response)
            return voltage_response

        # Print timeout message and wait before retrying
        print("No valid response, retrying...")
        time.sleep(delay)
    return None

# Main code execution
print("Checking PSU status and testing alternate command with FTDI...")
response = check_status_and_voltage()

if response:
    print("PSU is responding:", response)
else:
    print("Failed to get a valid response from PSU after retries")

# Close the serial connection
ser.close()
