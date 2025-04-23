## Running jobs on BLT with PAUP


Normally on BLT, we run paup commands directly in the command line. This can be fine, but won't work for longer running analyses. In those cases, it's necessary to set things up so your paup analysis is submitted to SLURM - the cluster's job scheduler. That way your analysis will run even if you disconnect from BLT.

First you'll probably want to create a folder in your home directory. In command line:

<pre><code>
mkdir ~/myPaupProject
cd ~/myPaupProject

</code></pre>




🧾 Step 1: Create a driver Nexus file
Create a new file called driver.nex with the following content:

<pre><code>
#NEXUS
begin paup;
    exe ~/bio408/paup_nexus_files/primate-mtDNA.nex;
end;
</code></pre>
This acts as an instruction set for PAUP* to execute another Nexus file.
[sample driver.nex file](driver.nex)


💻 Step 2: Write the Slurm job script
Create a file called run.sh:

<pre><code>
#!/bin/bash
#SBATCH --job-name=jm-paup-test       # Optional job name
#SBATCH --output=paupOutput.txt       # File to write standard output
#SBATCH --error=error.txt             # File to write errors

paup -n driver.nex
</code></pre>
[sample run.sh file](run.sh)

🚀 Step 3: Submit the job to Slurm
Run the following command from the terminal:

<pre><code>
sbatch run.sh
</code></pre>



You can check the status of your job by running `squeue` in command line. This will display a list of currently running jobs.
If you don't see your job listed, it's no longer running. Then you can check the output and error files (specified in your run.sh file) to see if it worked.


