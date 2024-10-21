import serial

# Replace 'COM6' with your actual serial port (e.g., '/dev/ttyUSB0' on Linux)
ser = serial.Serial('COM6', 115200, timeout=1)

# Send the "tmp?" command to request temperature data
ser.write(b'tmp?\n')

# Wait for the response
response = ser.read(200)  # Read up to 200 bytes of data
print("Received from RP2040:", response.decode('utf-8'))

ser.close()
