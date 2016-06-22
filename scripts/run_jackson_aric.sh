#!/bin/bash

#Load R
module load R/3.2.5

#Run jhu_abr
bash run_plink_for_cohort.sh jackson_aric  \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_ARIC/dosage_files_QCied/chr4_jackson_aric.dose.tfam  \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_ARIC/dosage_files_QCied/jack_aric_pheno.txt \
     /gpfs/barnes_share/dcl01_data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_ARIC/dosage_files_QCied
