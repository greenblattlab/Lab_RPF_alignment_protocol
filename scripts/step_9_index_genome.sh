#!/bin/bash
#SBATCH --time=00:10:00
#SBATCH --mem=12G
#SBATCH --cpus-per-task=10
#SBATCH --account=def-egreenbl
#SBATCH --job-name=Index_genome
#SBATCH --output=%x-%j.out

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load star

STAR --runThreadN 8 --runMode genomeGenerate --genomeDir . --genomeFastaFiles Drosophila_melanogaster.BDGP6.32.dna.toplevel.fa --sjdbGTFfile Drosophila_melanogaster.BDGP6.32.103.gtf --sjdbOverhang 100 --genomeSAindexNbases 13
