#!/bin/bash

#Load R
module load R/3.2.5

#Run jhu_abr
bash run_plink_for_cohort.sh jackson_jhs  \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_JHS/dosage_files_QCied/chr4_jackson_jhs.dose.tfam  \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_JHS/dosage_files_QCied/jack_jhs_pheno.txt \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_JHS/dosage_files_QCied
