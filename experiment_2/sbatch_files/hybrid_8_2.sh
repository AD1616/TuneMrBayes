#!/bin/bash
#
#SBATCH -J algae_hybrid_8_2
#SBATCH -N 1 --ntasks-per-node=8
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=0
#SBATCH --exclusive
#SBATCH -t 2:00:00
#SBATCH -o result.out
#SBATCH -e error.err

cd $HOME/scratch/MrBayes-VIP-Module/experiment_2/hybrid_8_2

module load openmpi

srun $HOME/mrbayes/hybrid/bin/mb ../nexus_files/Lindsey_et_al_2021_volvocine_algae_dataset_hybrid.nexus