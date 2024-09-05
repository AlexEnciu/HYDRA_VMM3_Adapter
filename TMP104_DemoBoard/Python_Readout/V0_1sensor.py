from machine import Pin, UART
import time

uart = UART(1, baudrate=9600, tx=Pin(0), rx=Pin(1))

def read_temperature():
    # Send calibration byte
    uart.write(b'\x55')
    time.sleep(0.1)
    
    # Send global read command
    uart.write(b'\xE1')
    time.sleep(0.1)
    
    # Read temperature byte
    temp = uart.read(1)
    if temp:
        temperature = int.from_bytes(temp, 'little')
        return temperature
    return None

while True:
    temperature = read_temperature()
    if temperature is not None:
        print("Temperature:", temperature, "°C")
    time.sleep(1)
