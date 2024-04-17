"""
Plot template for scaling with 2, 4, 8, 16 processes
"""

import matplotlib.pyplot as plt

"""
Pass in runtime (seconds) for 2, 4, 8, 16 processes
"""
def create(time2, time4, time8, time16):
    number_of_cpus = [2, 4, 8, 16]

    time_in_seconds = [time2, time4, time8, time16]

    plt.plot(number_of_cpus, time_in_seconds, 'ro')
    plt.xlabel("Number of CPUs Used")
    plt.ylabel("Time (Seconds)")

    return plt