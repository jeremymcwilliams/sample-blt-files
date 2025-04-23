#!/bin/bash
#SBATCH --job-name=custom-job-name
#SBATCH --output=paupOutput.txt
#SBATCH --error=error.txt

paup -n driver.nex  #or path to driver.nex, if in a different directory from run.sh