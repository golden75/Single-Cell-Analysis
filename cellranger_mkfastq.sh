#!/bin/bash
#SBATCH --job-name=cellranger_mkfastq
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=30G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname

module load bcl2fastq/2.20
module load cellranger/2.1.1

cellranger mkfastq --id=sample1 \
	--run=Files \
	--csv=cellranger_sample1.csv \
	--output-dir=outs \
	--localcores=8 \
	--localmem=40 


