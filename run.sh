#!/bin/bash
#SBATCH --gres=gpu:2    # Request 2 GPUs
#SBATCH --job-name=jm-job-03262025        # Job name (optional)
#SBATCH --output=output.txt           # Standard output file
#SBATCH --error=error.txt             # Standard error file
#SBATCH --time=1:00:00                # Maximum runtime (D-HH:MM:SS)

python3 -u test.py
