#!/bin/bash
# This is PhyEffector.....Welcome.....!
#
#
# Edit this script to suit your installation needs.
#
#
# 
#
# Contact us:
# BCC
# blondy.canto@cicy.mx
#
# KGCA
# carreon.gisel@gmail.com

####--Homology analysis of input against true effectors database--####

mkdir -p ./tmp/BlastP_result
blastp -db ./data/DATABASE/true_effectors_db/738_POSITIVE_DB.fasta -query ./tmp/outfiles/input.fasta -out ./tmp/BlastP_result/res_blast.txt -outfmt 6 -evalue 1e-6 -max_hsps 1 -max_target_seqs 5 -qcov_hsp_perc 45


cut -f1 ./tmp/BlastP_result/res_blast.txt > ./tmp/outfiles/id4.txt


####
