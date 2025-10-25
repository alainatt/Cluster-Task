#!/bin/bash
#SBATCH --job-name=normals
#SBATCH --output=output/normals.out
#SBATCH --time=00:02:00
#SBATCH --mem=500M

module load r/4.3.1    # Load the R module available on the cluster
Rscript generate_normals.R
