#!/bin/bash
#SBATCH --job-name=my_job
#SBATCH --output=mbayes_out.txt
#SBATCH --error=mbayes_err.txt
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G


# Navigate to your working directory
cd ~/mrBayesTest

#this points to a specific version of Mr Bayes that works with the cluster
mpirun -np 1 $HOME/opt/mrbayes/3.2.7/bin/mb driver.nex