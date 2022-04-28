#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --mem=1G
#SBATCH --array=1-23
#SBATCH --account=def-egreenbl
#SBATCH --job-name=Download_SSR
#SBATCH --output=output/%x-%j.out

module load StdEnv/2020
module load gcc/9.3.0
module load sra-toolkit/2.10.8

# list should contain all of the
# Commands you wish to run.
echo "Starting task $SLURM_ARRAY_TASK_ID"
commands=$(sed -n "${SLURM_ARRAY_TASK_ID}p" step_14_command_list)

# Then execute all of the commands in parrallel.
eval $commands
