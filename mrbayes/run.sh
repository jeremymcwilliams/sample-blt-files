#!/bin/bash
#SBATCH --job-name=primates_mb
#SBATCH --output=mbayes_out.txt
#SBATCH --error=mbayes_err.txt
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G

# Load any necessary modules (depends on your cluster config)
# module load mrbayes



# Navigate to your working directory
cd ~/myBayesTest



#module load openmpi  # only if needed on your cluster
mpirun -np 1 $HOME/opt/mrbayes/3.2.7/bin/mb driver.nex