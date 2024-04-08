#!/bin/bash
#
#SBATCH -J whitefly_serial
#SBATCH -N 1 --ntasks-per-node=1
#SBATCH --mem-per-cpu=0
#SBATCH --exclusive
#SBATCH -t 6:00:00
#SBATCH -o result.out
#SBATCH -e error.err

cd $HOME/scratch/MrBayes-VIP-Module/experiment_1/serial

srun $HOME/mrbayes/serial/bin/mb ../nexus_files/boykin_and_de_barro_alignment.nexus