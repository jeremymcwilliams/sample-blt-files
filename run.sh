#!/bin/bash
#SBATCH --gres=gpu:2    # Request 2 GPUs
#SBATCH --job-name=jm-job-03262025        # Job name (optional)
#SBATCH --output=output.txt           # Standard output file
#SBATCH --error=error.txt             # Standard error file
#SBATCH --time=1:00:00                # Maximum runtime (D-HH:MM:SS)
## if using CPUs instead of GPUs, can add something like this: #SBATCH --cpus-per-task=4

#activate virtual environment
source /home/labs/drake/cs369/venv2025/bin/activate

# run the script
python3 -u test.py

#exit virtual environment
deactivate

