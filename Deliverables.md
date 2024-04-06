# general info on MrBayes + whiteflies and algae datasets

**What is MrBayes and how is it used by research labs?**

MrBayes is a software package that helps research labs perform Bayesian Phylogenetic inference. Essentially, it helps researchers make predictions about an organism and/or its genetic history based on existing genetic data. MrBayes uses Markov Chain Monte Carlo methods in order to make these inferences.

**Describe an advantage of implementing the Beagle lib with MrBayes**

The Beagle library provides tools to optimally perform calculations commonly used for Bayesian inference. Beagle takes advantage of hardware, and can more effectively make use out of highly-parallel processors - particularly, GPUs. Because MrBayes does Bayesian inference, if such highly-parallel hardware is available to researchers, then it would make sense to implement the Beagle lib with MrBayes in order to optimize required calculations and to optimize use of hardware. In fact, according to Ronquist et al. (2012), the speedup is more than 50x when using the Beagle lib with MrBayes with codon problems (a codon is a term in genetics that denotes the representation of amino acids by three consecutive nucleotides). Such speedup can completely change the circumstances of research labs on a time crunch; something that would have taken almost 2 months, for example, would get reduced to just 1 day.

**What is the importance of identifying the origin of whiteflies?**

Whiteflies are significant pest and invasive species, damaging food and fiber crops as well as spreading plant viruses. Due to the 'morphologically indistinguishable' nature of the species complex, it has been dificult to identify which species an organism belongs to, slowing down research progress. Boykin and De Barro's paper illustrates single-gene (mtCOI) based species identification methdologies that can also be generalized to other morphologically similar species.
