#!/bin/bash

#Load R
module load R/3.2.5

#Run jhu_abr
bash run_plink_for_cohort.sh winston_salem \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/WINSTON_SALEM/dosage_files_QCied/chr4_winston.dose.tfam \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/WINSTON_SALEM/dosage_files_QCied/winston_salem_pheno.txt \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/WINSTON_SALEM/dosage_files_QCied
