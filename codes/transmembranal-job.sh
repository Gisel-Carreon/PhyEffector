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


mkdir -p ./tmp/TMHMM_results
cat ./tmp/SignalP_result/processed_fasta.fasta  | ./bin/tmhmm/tmhmm-2.0c/bin/decodeanhmm.Linux_x86_64 -f ./bin/tmhmm/tmhmm-2.0c/lib/TMHMM2.0.options -modelfile ./bin/tmhmm/tmhmm-2.0c/lib/TMHMM2.0.model > ./tmp/TMHMM_results/tmhmm.gff3
	
perl ./bin/tmhmm/tmhmm-2.0c/bin/tmhmmformat.pl ./tmp/TMHMM_results/tmhmm.gff3 > ./tmp/TMHMM_results/res.gff3

grep -E "Number of predicted TMHs:  0" ./tmp/TMHMM_results/res.gff3| sed 's/# />/g' > ./tmp/TMHMM_results/IDtmhmm.txt
cut -d' ' -f1 ./tmp/TMHMM_results/IDtmhmm.txt > ./tmp/TMHMM_results/id.wotransmembrandomains.fasta

grep -E "Number of predicted TMHs:  1" ./tmp/TMHMM_results/res.gff3| sed 's/# />/g' > ./tmp/TMHMM_results/IDtmhmm1.txt
cut -d' ' -f1 ./tmp/TMHMM_results/IDtmhmm1.txt > ./tmp/TMHMM_results/id.wtransmembrandomains1.fasta


cat ./tmp/TMHMM_results/id.wotransmembrandomains.fasta | grep '>' > ./tmp/outfiles/id2.txt
cat ./tmp/TMHMM_results/id.wtransmembrandomains1.fasta | grep '>' >> ./tmp/outfiles/id2.txt

perl ./codes/tmhmmjob.pl
