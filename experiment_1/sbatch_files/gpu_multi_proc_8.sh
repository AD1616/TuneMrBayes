#!/bin/bash
#
#SBATCH -J whitefly_gpu_multi_proc_8
#SBATCH -N 1 --ntasks-per-node=8
#SBATCH --gres=gpu:V100:1
#SBATCH --mem-per-cpu=0
#SBATCH --exclusive
#SBATCH -t 2:00:00
#SBATCH -o result.out
#SBATCH -e error.err

cd $HOME/scratch/MrBayes-VIP-Module/experiment_1/gpu_multi_proc_8

module load openmpi cuda

srun $HOME/mrbayes/gpu/bin/mb ../nexus_files/boykin_and_de_barro_alignment_gpu.nexus