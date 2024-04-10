"""
CPU Scaling graph for MrBayes (Without Beagle)
"""

import matplotlib.pyplot as plt

number_of_cpus = [2, 4, 8, 16]

time_in_seconds = [7854, 3947, 2868, 1832]

plt.plot(number_of_cpus, time_in_seconds, 'ro')
plt.xlabel("Number of CPUs Used")
plt.ylabel("Time (Seconds)")
plt.title("MrBayes (Without Beagle) CPU Scaling Graph")

plt.show()