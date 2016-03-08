#!/bin/bash -l
#PBS -l walltime=96:00:00,nodes=1:ppn=32,mem=998gb
#PBS -q ram1t
#PBS -e sunflower_trinity_assembly.error
#PBS -o sunflower_trinity_assembly.out
#PBS -N sunflower_trinity_assembly
#PBS -M goggi015@umn.edu
#PBS -n abe
#PBS -V
## Written by Shawn Goggins
mkdir /scratch.global/goggi015
cd /scratch.global/goggi015
mkdir sunflower_trinity_assembly
module load trinityrnaseq/2.1.1
module load java/jdk1.8.0_45
## Assembly
Trinity --seqType fq --max_memory 30G \
	--left /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/flower_R1.fastq,/panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/leaf_R1.fastq,/panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/root_R1.fastq,/panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/stem_R1.fastq \
	--right /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/flower_R2.fastq,/panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/leaf_R2.fastq,/panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/root_R2.fastq,/panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Cut_Reads/stem_R2.fastq \
	--CPU 32 --SS_lib_type RF --full_cleanup --output sunflower_trinity_assembly --normalize_reads
cd ~
mv /scratch.global/goggi015/* /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus
#rm -rf /scratch.global/goggin015/*
