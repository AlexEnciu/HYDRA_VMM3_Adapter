import numpy as np
import matplotlib.pyplot as plt

# -------------------------
# USER SETTINGS
# -------------------------

# Capacitor branches: (name, C [F], ESR [Ω], ESL [H])
caps = [
    ("100n_0402", 100e-9, 0.01, 0.8e-9),
    ("1u_0603",     1e-6, 0.10, 1.2e-9),
    # uncomment to add a high-SRF helper:
    ("10n_0402",   10e-9, 0.05, 0.8e-9),
]

# Optional shared series elements before the cap bank (e.g., common plane/via)
R_series_common = 0.0        # Ω
L_series_common = 0.0e-9     # H

# Target impedance Zt = Vdroop / Istep
Vdroop = 0.05     # V  (allowed droop)
Istep  = 0.132    # A  (worst-case transient current)
Zt = Vdroop / Istep

# Frequency sweep: 1 kHz → 500 MHz
f_start = 1e3
f_stop  = 1e9
N = 4000
f = np.logspace(np.log10(f_start), np.log10(f_stop), N)
w = 2*np.pi*f

# -------------------------
# CALC
# -------------------------
def branch_impedance(C, ESR, ESL, w):
    # Series R-L with capacitor to ground: Z = ESR + jωESL + 1/(jωC)
    return ESR + 1j*w*ESL + 1/(1j*w*C)

# Each branch in parallel
Y_total = np.zeros_like(w, dtype=complex)
for name, C, ESR, ESL in caps:
    Zb = branch_impedance(C, ESR, ESL, w)
    Y_total += 1/Zb

Z_parallel = 1/ Y_total

# Add optional shared R/L in series
Z_common = R_series_common + 1j*w*L_series_common
Z_total = Z_common + Z_parallel
Zmag = np.abs(Z_total)

# Print SRF of each branch
def srf_hz(C, ESL):
    return 1.0/(2*np.pi*np.sqrt(ESL*C))

print("Branch SRFs:")
for name, C, ESR, ESL in caps:
    print(f"  {name:>10s}: SRF ≈ {srf_hz(C, ESL)/1e6:7.2f} MHz   (ESR={ESR:g} Ω, ESL={ESL*1e9:g} nH)")

print(f"\nTarget impedance Zt = Vdroop/Istep = {Vdroop}/{Istep} ≈ {Zt:.3f} Ω")

# -------------------------
# PLOT
# -------------------------
plt.figure(figsize=(10,6))
plt.loglog(f, Zmag, label="|Z_total|")
plt.loglog(f, np.full_like(f, Zt), linestyle="--", label=f"Zt = {Zt:.3f} Ω")

# Optional SRF markers
for name, C, ESR, ESL in caps:
    fs = srf_hz(C, ESL)
    if f_start <= fs <= f_stop:
        plt.axvline(fs, linestyle=":", linewidth=1)
        plt.text(fs, Zmag.min()*1.2, f"{name}\nSRF≈{fs/1e6:.1f} MHz",
                 rotation=90, va="bottom", ha="right")

plt.title("PDN Impedance vs Frequency (up to 500 MHz)")
plt.xlabel("Frequency [Hz]")
plt.ylabel("|Z| [Ω]")
plt.grid(True, which="both")
plt.legend()
plt.tight_layout()
plt.show()
