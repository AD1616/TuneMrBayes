# general info on MrBayes + whiteflies and algae datasets

**What is MrBayes and how is it used by research labs?**

MrBayes is a software package that helps research labs perform Bayesian Phylogenetic inference. Essentially, it helps researchers make predictions about an organism and/or its genetic history based on existing genetic data. MrBayes uses Markov Chain Monte Carlo methods in order to make these inferences.

**Describe an advantage of implementing the Beagle lib with MrBayes**

The Beagle library provides tools to optimally perform calculations commonly used for Bayesian inference. Beagle takes advantage of hardware, and can more effectively make use out of highly-parallel processors - particularly, GPUs. Because MrBayes does Bayesian inference, if such highly-parallel hardware is available to researchers, then it would make sense to implement the Beagle lib with MrBayes in order to optimize required calculations and to optimize use of hardware. In fact, according to Ronquist et al. (2012), the speedup is more than 50x when using the Beagle lib with MrBayes with codon problems (a codon is a term in genetics that denotes the representation of amino acids by three consecutive nucleotides). Such speedup can completely change the circumstances of research labs on a time crunch; something that would have taken almost 2 months, for example, would get reduced to just 1 day.

**What is the importance of identifying the origin of whiteflies?**

Whiteflies are significant pest and invasive species, damaging food and fiber crops as well as spreading plant viruses. Due to the 'morphologically indistinguishable' nature of the species complex, it has been dificult to identify which species an organism belongs to, slowing down research progress. Boykin and De Barro's paper illustrates single-gene (mtCOI) based species identification methdologies that can also be generalized to other morphologically similar species.

**From the perspective of an evolutionary biologist, why is it necessary to improve the phylogeny of a model system such as the volvocine algae?**

One of the primary reasons to study volvocine algae is to understand the evolution of multicellularity in life. Multicellularity is one of the most important developments in life because it is what brought about most of modern visible life on Earth; understanding how it came about will in turn help us gain a deeper understanding of evolution in general. Volvocine algae are an example of a species that can be studied to gain insights into multicellularity, because they range from single celled all the way up to 50,000 celled organisms, depending on the species. Because of this range, and particularly the inclusion of single celled species, the volvocine algae provide a good model for the origin of multicellularity - hence the reason they are called a "model system". In order to gain a fuller understanding of the origin of multicellularity, cell biology is superimposed on molecular phylogeny - which only works if the phylogeny is as accurate as possible. This is why it is important to improve the phylogeny of a model system such as the volvocine algae.
