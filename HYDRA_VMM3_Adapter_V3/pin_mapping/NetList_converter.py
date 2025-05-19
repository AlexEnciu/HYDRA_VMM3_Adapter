import re
import pandas as pd

# 1) Load your KiCad netlists
with open(r'C:\Users\alex_\Documents\IKP\HYDRA\HYDRA_VMM3_Adapter\HYDRA_VMM3_Adapter_V3\pin_mapping\HYDRA_VMM3_Adapter_V3.net', 'r') as f:
    carrier_text = f.read()
with open(r'C:\Users\alex_\Documents\IKP\HYDRA\HYDRA_VMM3_Adapter\HYDRA_VMM3_Adapter_V3\pin_mapping\HYDRA_VMM3_CARD_V3_Flex.net', 'r') as f:
    module_text = f.read()

# 2) Parse module connector J1 nets
module_nets = {}
current_net = None
for line in module_text.splitlines():
    line = line.strip()
    if line.startswith('(net'):
        m = re.search(r'\(name\s+"([^"]+)"\)', line)
        current_net = m.group(1) if m else None
    elif line.startswith('(node'):
        m = re.search(r'\(ref\s+"J1"\)\s+\(pin\s+"([^"]+)"\)', line)
        if m:
            pin = m.group(1)
            module_nets[pin] = current_net

# 3) Parse carrier connectors J1–J6 nets
carrier_map = {}
current_net = None
for line in carrier_text.splitlines():
    line = line.strip()
    if line.startswith('(net'):
        m = re.search(r'\(name\s+"([^"]+)"\)', line)
        current_net = m.group(1) if m else None
    elif line.startswith('(node'):
        m = re.search(r'\(ref\s+"J([1-6])"\)\s+\(pin\s+"([^"]+)"\)', line)
        if m:
            connector = f"J{m.group(1)}"
            pin = m.group(2)
            carrier_map[(connector, pin)] = current_net

# 4) Build correlation DataFrame
rows = []
for pin, mod_net in sorted(module_nets.items()):
    row = {'Module Pin': pin, 'Module Net': mod_net}
    for j in range(1, 7):
        row[f'Carrier J{j} Net'] = carrier_map.get((f'J{j}', pin), '')
    rows.append(row)

df = pd.DataFrame(rows)

# 5a) Option 1: print to console 
print(df.to_string(index=False))

# 5b) Option 2: write out as CSV
output_csv = r'C:\Users\alex_\Documents\IKP\HYDRA\HYDRA_VMM3_Adapter\HYDRA_VMM3_Adapter_V3\pin_mapping\pin_mapping_with_nets.csv'
df.to_csv(output_csv, index=False)
print(f'\nWritten detailed mapping to {output_csv}')
