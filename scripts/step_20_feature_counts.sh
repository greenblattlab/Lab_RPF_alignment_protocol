#!/bin/bash
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_control_RNA_1.txt control_RNA_1_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_control_RNA_2.txt control_RNA_2_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_control_RNA_3.txt control_RNA_3_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RNA_1.txt Fmr1_RNA_1_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RNA_2.txt Fmr1_RNA_2_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RNA_3.txt Fmr1_RNA_3_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RNA_4.txt Fmr1_RNA_4_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RNA_5.txt Fmr1_RNA_5_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t exon -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RNA_6.txt Fmr1_RNA_6_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_control_RPF_1.txt control_RPF_1_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_control_RPF_2.txt control_RPF_2_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_control_RPF_3.txt control_RPF_3_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_control_RPF_4.txt control_RPF_4_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RPF_1.txt Fmr1_RPF_1_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RPF_2.txt Fmr1_RPF_2_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RPF_3.txt Fmr1_RPF_3_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RPF_4.txt Fmr1_RPF_4_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RPF_5.txt Fmr1_RPF_5_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RPF_6.txt Fmr1_RPF_6_Aligned.sortedByCoord.out.bam
featureCounts -T 8 -t CDS -g gene_id -a $HOME/projects/def-egreenbl/genomes/fly/Drosophila_melanogaster.BDGP6.32.103.gtf -o counts_Fmr1_RPF_7.txt Fmr1_RPF_7_Aligned.sortedByCoord.out.bam
