#!/bin/bash
#
#SBATCH -J whitefly_hybrid_1_16
#SBATCH -N 1 
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=0
#SBATCH --exclusive
#SBATCH -t 16:00:00
#SBATCH -o result.out
#SBATCH -e error.err

cd $HOME/scratch/MrBayes-VIP-Module/experiment_1/hybrid_1_16

module load openmpi

srun $HOME/mrbayes/hybrid/bin/mb ../nexus_files/boykin_and_de_barro_alignment_hybrid.nexus