## Running jobs on BLT with PAUP


Normally on BLT, we run paup commands directly in the command line. This can be fine, but won't work for longer running analyses. In those cases, it's necessary to set things up so your paup analysis is submitted to SLURM - the cluster's job scheduler. That way your analysis will run even if you disconnect from BLT.



🧾 Step 1: Create a driver Nexus file
Create a new file called driver.nex with the following content:

<pre><code>#NEXUS begin paup; exe ~/bio408/paup_nexus_files/primate-mtDNA.nex; end; </code></pre>
This acts as an instruction set for PAUP* to execute another Nexus file.


💻 Step 2: Write the Slurm job script
Create a file called run.sh:

<pre><code>
#!/bin/bash
#SBATCH --job-name=jm-paup-test       # Optional job name
#SBATCH --output=paupOutput.txt       # File to write standard output
#SBATCH --error=error.txt             # File to write errors

paup -n ~/bio408/driver.nex
</code></pre>

🚀 Step 3: Submit the job to Slurm
Run the following command from the terminal:

<pre><code>
sbatch run.sh
</code></pre>