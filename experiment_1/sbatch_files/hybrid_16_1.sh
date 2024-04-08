#!/bin/bash
#
#SBATCH -J whitefly_hybrid_16_1
#SBATCH -N 1 
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=0
#SBATCH --exclusive
#SBATCH -t 3:00:00
#SBATCH -o result.out
#SBATCH -e error.err

cd $HOME/scratch/MrBayes-VIP-Module/experiment_1/hybrid_16_1

module load openmpi

srun $HOME/mrbayes/hybrid/bin/mb ../nexus_files/boykin_and_de_barro_alignment_hybrid.nexus