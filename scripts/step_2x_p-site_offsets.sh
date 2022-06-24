#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --mem=24G
#SBATCH --cpus-per-task=10
#SBATCH --account=def-egreenbl
#SBATCH --job-name=offsets
#SBATCH --output=%x-%j.out

module load gcc/9.3.0 r/4.1.2

Rscript ~/Lab_RPF_alignment_protocol/scripts/P-site_offsetting.R 
