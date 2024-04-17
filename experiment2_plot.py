"""
Experiment 2 CPU Scaling graph for MrBayes (Without Beagle)
"""
import matplotlib.pyplot as plt
from plot_template import create

plot = create(1028970, 535198, 323676, 170829)
plot.title("Experiment 2: MrBayes (Without Beagle) CPU Scaling Graph")
plot.show()