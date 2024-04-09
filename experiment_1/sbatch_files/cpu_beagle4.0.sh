#!/bin/bash
#
#SBATCH -J whitefly_cpu_beagle4.0
#SBATCH -N 1 --ntasks-per-node=4
#SBATCH --mem-per-cpu=0
#SBATCH --exclusive
#SBATCH -t 3:00:00
#SBATCH -o result.out
#SBATCH -e error.err

cd $HOME/scratch/MrBayes-VIP-Module/experiment_1/cpu_beagle4.0/

module load openmpi

srun $HOME/mrbayes/cpu_beagle4.0/bin/mb ../nexus_files/boykin_and_de_barro_alignment.nexus