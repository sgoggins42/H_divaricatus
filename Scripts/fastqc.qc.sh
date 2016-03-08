#!/bin/bash
## Written by Shawn Goggins
#PBS -l walltime=24:00:00,nodes=1:ppn=2,mem=4gb
#PBS -o /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Error_Outputs
#PBS -e /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Error_Outputs
#PBS -N FastQC
#PBS -n abe

# 3/8/16

# FastQC
module load fastqc

# Set wd
cd /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads

# Loop
for i in *.fastq
do
	fastqc -f fastq $i > "${i%.fastq}"
done
#
