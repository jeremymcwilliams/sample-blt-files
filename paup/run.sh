#!/bin/bash
#SBATCH --job-name=custom-job-name  #name your job whatever you want
#SBATCH --output=paupOutput.txt     #any output from paup will be written to this file
#SBATCH --error=error.txt           #any errors will be writting to this file

paup -n driver.nex  #or path to driver.nex, if in a different directory from run.sh