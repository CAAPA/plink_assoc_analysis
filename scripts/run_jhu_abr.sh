#!/bin/bash

#Load R
module load R/3.2.5

#Run jhu_abr
bash run_plink_for_cohort.sh jhu_abr  \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JHU_ABR/dosage_files_QCied/chr4_jhu_abr.dose.tfam \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JHU_ABR/dosage_files_QCied/jhu_abr_pheno.txt \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JHU_ABR/dosage_files_QCied
