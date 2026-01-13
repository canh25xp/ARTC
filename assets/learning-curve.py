import matplotlib.pyplot as plt
import numpy as np
import os

# Learning time axis
time = np.linspace(0, 10, 300)

# Neovim: slow start, then fast growth, finally saturates (logistic curve)
L = 9.0   # maximum productivity (higher than others)
k = 1.2   # growth rate
t0 = 5.0  # inflection point (breakthrough moment)
neovim = L / (1 + np.exp(-k * (time - t0)))

# VS Code: moderate growth, lower ceiling
vscode = 4 * (1 - np.exp(-0.35 * time))

# --- Plot ---
plt.figure(figsize=(8, 5))
plt.plot(time, neovim, label="Neovim", color="green")
plt.plot(time, vscode, label="Visual Studio Code", color="blue")

plt.xlabel("Learning Time")
plt.ylabel("Performance / Productivity")
plt.title("Learning Curve Comparison of IDEs")
plt.legend()
plt.grid(True)
# Determine output path: same directory, same base name with .png extension
output_path = os.path.join(os.path.dirname(__file__), os.path.splitext(os.path.basename(__file__))[0] + ".png")
print(output_path)
plt.savefig(output_path)
plt.close()
