from machine import Pin, UART
import time

# Configure UART with 9600 baud rate
uart = UART(1, baudrate=57600, tx=Pin(4), rx=Pin(5),timeout=2000)
sensor_nr=16
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
        #blink_time=0.25
        led_b.on()
        led_r.off()
        time.sleep(0.25)
        led_r.on()
        led_b.off()
        time.sleep(0.25)
        led_b.on()
        led_r.off()
        time.sleep(0.25)
    led_r.on()
    led_g.on()
    led_b.on()

def send_commands_in_single_line():
    print("Sending combined command sequence...")
    try:
        uart.write(b'\x55\x8C\x90\xE1')
        time.sleep(0.1)  # Short delay to allow for response
        answear=uart.read()
        if answear is None:
            print("No reply from sensors has been detected")
        else:
            print("init= ",answear)
    except Exception as e:
        print(f"Initialisation faild {e}")
    
def byte_to_decimal(val):
    return [int(byte) for byte in val]

def read_temperature():
    uart.write(b'\x55\xF1')
    time.sleep(0.1)
    response = uart.read(2+sensor_nr)
    #print(f"recived bytes: {response.hex()}")
    if response and len(response) == 2+sensor_nr:
        temperature=response[2:]
        for index, element in enumerate(temperature):
            print(f"Temp_{index}: {element}°C")
        #Alarms
            """
        if max(temperature) in range(45,55):
            temp_high()
        elif max(temperature)<45:
            temp_normal()
        elif max(temperature)>55:
            temp_alarm()
        """    
        return 0
    else:
        print("No response from sensor or incomplete data received.")
        return None


def main():
    led_on()
    send_commands_in_single_line()  # Send all commands in a single transmission
    while True:
        try:
            if read_temperature() is not None:
                print(f"Data reading OK!")
            else:
                print("Temperature reading failed.")
            time.sleep(1)  # Delay before attempting the next read
        except Exception as e:
            print(f"An error occurred: {e}")
            

if __name__ == "__main__":
    main()
