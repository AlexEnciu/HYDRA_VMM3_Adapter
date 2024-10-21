from machine import Pin, UART
import time

# Configure UART with 57600 baud rate
uart = UART(1, baudrate=57600, tx=Pin(4), rx=Pin(5), timeout=2000)
sensor_nr = 16
led_r = Pin(18, Pin.OUT)
led_g = Pin(19, Pin.OUT)
led_b = Pin(20, Pin.OUT)

def led_on():
    led_r.off()
    led_g.off()
    led_b.off()

def led_off():
    led_r.on()
    led_g.on()
    led_b.on()

def temp_high():
    led_r.off()
    led_g.on()
    led_b.on()

def temp_normal():
    led_r.on()
    led_g.off()
    led_b.on()

def temp_alarm():
    print("ALARM !!!")
    for i in range(10):
        led_b.on()
        led_r.off()
        time.sleep(0.25)
        led_r.on()
        led_b.off()
        time.sleep(0.25)
    led_r.on()
    led_g.on()
    led_b.on()

def send_commands_in_single_line():
    print("Sending combined command sequence...")
    try:
        uart.write(b'\x55\x8C\x90\xE1')
        time.sleep(0.1)  # Short delay to allow for response
        answear = uart.read()
        if answear is None:
            print("No reply from sensors has been detected")
        else:
            print("init= ", answear)
    except Exception as e:
        print(f"Initialization failed: {e}")

def byte_to_decimal(val):
    return [int(byte) for byte in val]

def read_temperature():
    uart.write(b'\x55\xF1')
    time.sleep(0.1)
    response = uart.read(2 + sensor_nr)
    if response and len(response) == 2 + sensor_nr:
        # Skip the first two command bytes and read the temperature bytes
        temperature = response[2:]
        
        # Map the temperature data to a 4x4 snake-pattern grid
        temp_grid = [
            [temperature[3], temperature[2], temperature[1], temperature[0]],  # First row
            [temperature[4], temperature[5], temperature[6], temperature[7]],  # Second row
            [temperature[11], temperature[10], temperature[9], temperature[8]], # Third row
            [temperature[12], temperature[13], temperature[14], temperature[15]] # Fourth row
        ]
        
        # Print temperature grid to serial output in CSV format
        for row in temp_grid:
            print(",".join(str(t) for t in row))  # Output as CSV row
        
        return temp_grid  # Return the 4x4 grid
    else:
        print("No response from sensor or incomplete data received.")
        return None

def main():
    led_on()
    send_commands_in_single_line()  # Send all commands in a single transmission
    while True:
        try:
            temp_grid = read_temperature()  # Get the temperature grid
            if temp_grid is not None:
                print("Data reading OK!")
            else:
                print("Temperature reading failed.")
            time.sleep(5)  # Delay before attempting the next read
        except Exception as e:
            print(f"An error occurred: {e}")

if __name__ == "__main__":
    main()
