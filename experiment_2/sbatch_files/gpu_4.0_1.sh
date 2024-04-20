#!/bin/bash
#
#SBATCH -J algae_gpu4.0_1
#SBATCH -N 1 --ntasks-per-node=1
#SBATCH --gres=gpu:V100:1
#SBATCH --mem-per-cpu=0
#SBATCH --exclusive
#SBATCH -t 1:00:00
#SBATCH -o result.out
#SBATCH -e error.err

cd $HOME/scratch/MrBayes-VIP-Module/experiment_2/gpu_4.0_1

module load openmpi cuda

srun $HOME/mrbayes/gpu_4.0/bin/mb ../nexus_files/Lindsey_et_al_2021_volvocine_algae_dataset_gpu.nexus