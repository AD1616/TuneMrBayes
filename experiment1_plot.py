"""
Experiment 1 CPU Scaling graph for MrBayes (Without Beagle)
"""
import matplotlib.pyplot as plt
from plot_template import create

plot = create(7854, 3947, 2868, 1832)
plot.title("Experiment 1: MrBayes (Without Beagle) CPU Scaling Graph")
plot.show()