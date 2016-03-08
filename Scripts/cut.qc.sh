#!/bin/bash
## Written by Shawn Goggins
#PBS -l walltime=24:00:00,nodes=1:ppn=3,mem=4gb
#PBS -o /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Error_Outputs
#PBS -e /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Error_Outputs
#PBS -N Cut.QC
#
# Cut
module load cutadapt
#
cd /panfs/roc/groups/2/brandvai/goggi015/H_divaricatus/Raw_FastQ
# FLOWERS
#cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACTGACCAATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o flower_R1.fastq 503214A-flower_TGACCA_L006_R1_001.fastq
#
#cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACTGACCAATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o flower_R2.fastq 503214A-flower_TGACCA_L006_R2_001.fastq
#
# LEAF
#cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACCGATGTATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o leaf_R1.fastq 503214A_leaf_redo_CGATGT_L008_R1_001.fastq
#
#cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACCGATGTATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o leaf_R2.fastq 503214A_leaf_redo_CGATGT_L008_R2_001.fastq
#
# ROOT
#cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACCTTGTAATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o root_R1.fastq 503214A-root_CTTGTA_L007_R1_001.fastq
#
#cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACCTTGTAATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o root_R2.fastq 503214A-root_CTTGTA_L007_R2_001.fastq 
#
# STEM
cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACCAGATCATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o stem_R1.fastq 503214A_stem_redo_CAGATC_L008_R1_001.fastq
#
cutadapt -a ^AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT -a ^GATCGGAAGAGCACACGTCTGAACTCCAGTCACCAGATCATCTCGTATGCCGTCTTCTGCTTG -f fastq -m 30 --quality-base=33 -o stem_R2.fastq 503214A_stem_redo_CAGATC_L008_R2_001.fastq
