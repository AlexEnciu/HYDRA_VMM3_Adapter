import serial
import matplotlib.pyplot as plt
import numpy as np

def read_from_serial(port):
    with serial.Serial(port, 57600, timeout=1) as ser:  # Updated to 57600 baud rate
        fig, ax = plt.subplots()
        # Create an initial empty heatmap
        temp_grid = np.zeros((4, 4))
        cax = ax.matshow(temp_grid, cmap='hot')
        fig.colorbar(cax)

        # Add text labels for the temperature values
        temp_texts = [[ax.text(j, i, '', va='center', ha='center', color='white') for j in range(4)] for i in range(4)]

        plt.title('Temperature Heatmap')

        while True:
            try:
                grid = []  # Initialize grid for holding rows of temperature data
                print("Reading from serial...")
                # Collect 4 rows of temperature data
                while len(grid) < 4:
                    line = ser.readline().decode('utf-8').strip()
                    print(f"Raw line: {line}")  # Debug: Print each received line
                    
                    if line:
                        # Check if the line is valid temperature data
                        if all(c.isdigit() or c == ',' for c in line):
                            row = list(map(int, line.split(',')))
                            print(f"Row received: {row}")  # Debug: Print parsed row
                            grid.append(row)
                        else:
                            print(f"Skipping non-data message: {line}")
                
                if len(grid) == 4:
                    temp_grid = np.array(grid)
                    print(f"Grid received: \n{temp_grid}")  # Debug: Print the grid before plotting
                    update_plot(temp_grid, cax, temp_texts)  # Update the plot

            except Exception as e:
                print(f"Error: {e}")
            
            plt.pause(0.1)  # Pause briefly to allow for plot update

def update_plot(temp_grid, cax, temp_texts):
    """
    Update the heatmap and text labels with new temperature data.
    """
    # Update the heatmap data
    cax.set_data(temp_grid)
    
    # Update the temperature values in the text labels
    for i in range(len(temp_grid)):
        for j in range(len(temp_grid[i])):
            temp_texts[i][j].set_text(f'{temp_grid[i][j]:.1f}')
    
    # Redraw the figure
    plt.draw()

if __name__ == "__main__":
    serial_port = 'COM6'  # Updated to use COM6
    read_from_serial(serial_port)
