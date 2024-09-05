from machine import Pin, UART
import time

# Configure UART with 9600 baud rate
uart = UART(0, baudrate=9600, tx=Pin(0), rx=Pin(1))
sensor_nr=2

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
    for i in range(10):
        blink_time=0.25
        led_b.on()
        led_r.off()
        time.sleep(blink_time)
        led_r.on()
        led_b.off()
        time.sleep(blink_time)
        led_b.on()
        led_r.off()
        time.sleep(blink_time)
    led_r.on()
    led_g.on()
    led_b.on()

def send_commands_in_single_line():
    """
    Send all initialization and read commands in a single line to the TMP104 sensor.
    This approach might help if the issue is related to timing between commands.
    """
    print("Sending combined command sequence...")
    
    # Combine the calibration byte, initialization, and read commands into a single write operation
    uart.write(b'\x55\x8C\x90\xE1')  # Calibration, initialization, address assignment, and read commands in sequence
    time.sleep(0.1)  # Short delay to allow for response

def read_temperature_():
    """
    Attempt to read the temperature byte from the TMP104 sensor after sending combined commands.
    """
    uart.write(b'\x55\xF1')
    #time.sleep(0.1)
    response = uart.read(2+sensor_nr)
    #time.sleep(0.1)
    print(f"recived bytes: {response.hex()}")
    if response and len(response) == 4:
        # The first two bytes are echoes, the third byte is the temperature data
        temperature_byte = response[2]  # Index 2 for the third byte
        #print(f"Bytes received: {response.hex()}")

        # Convert the temperature byte to an integer
        temperature_1 = int(response[1])
        temperature_2 = int(response[2])
        
        #print(f"Temperature byte: {temperature_byte:02x}")
        return temperature_1,temperature_2
    else:
        print("No response from sensor or incomplete data received.")
        return None
def read_temperature():
    """
    Attempt to read the temperature byte from the TMP104 sensor after sending combined commands.
    """
    uart.write(b'\x55\xF1')
    #time.sleep(0.1)
    response = uart.read(2+sensor_nr)
    #time.sleep(0.1)
    print(f"recived bytes: {response.hex()}")
    if response and len(response) == 2+sensor_nr:
        # Convert the temperature byte to an integer
        temperature_1 = int(response[1])
        temperature_2 = int(response[2])
        temperature=response[1:sensor_nr+1]
        print(temperature)
        for index, element in enumerate(temperature):
            print(f"Temp_{index}: {element}°C")
        if max(temperature) in range(45,55):
            print("Temperature High")
            temp_high()
        elif max(temperature)<45:
            print("Temperature Normal")
            temp_normal()
        elif max(temperature)>55:
            print("Temperature ALARM!!")
            temp_alarm()
        return 0
    else:
        print("No response from sensor or incomplete data received.")
        return None


def main():
    led_on()
    send_commands_in_single_line()  # Send all commands in a single transmission
    while True:
        if read_temperature() is not None:
            a=0
        else:
            print("Temperature reading failed.")
        time.sleep(0.5)  # Delay before attempting the next read
        
def main_():
    
    send_commands_in_single_line()  # Send all commands in a single transmission
    while True:
        temperature_1, temperature_2 = read_temperature()
        if temperature_1 and temperature_2 is not None:
            print(f"Temperature_1: {temperature_1}°C Temperature_2: {temperature_2}°C")
        else:
            print("Temperature reading failed.")
        time.sleep(0.5)  # Delay before attempting the next read

if __name__ == "__main__":
    main()
