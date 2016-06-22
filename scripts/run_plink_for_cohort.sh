#!/bin/bash

#Set parameters
if [ "$#" -eq  "0" ]
then
    echo "Usage: ${0##*/} <cohort_name> <fam_path> <pheno_path> <dose_input_dir>"
    exit
fi
cohort=$1
fam=$2
pheno=$3
dose_dir=$4

#Create fam file
cat create_fam.R | R --vanilla --args $cohort $fam $pheno

#Create covariate file
cat create_cov.R | R --vanilla --args $cohort

#Create dosage file and run PLINK per chromosome
for chr in {1..22..1}
do
     python convert_to_plink_dosage.py \
       ${dose_dir}/chr${chr}.dose.vcf.gz \
       ../data/input/${cohort}/chr${chr}.dosage

     plink --dosage ../data/input/${cohort}/chr${chr}.dosage noheader format=1 \
      --covar ../data/input/${cohort}/cov.txt \
      --fam ../data/input/${cohort}/fam.fam --allow-no-sex \
      --out ../data/output/${cohort}/chr${chr}
done
