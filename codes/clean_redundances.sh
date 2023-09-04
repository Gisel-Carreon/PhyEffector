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

####--Eliminate redundance from the results--merge candidates--####


		cat ./tmp/outfiles/id2.txt >> ./tmp/outfiles/all-id.txt;
                   cat ./tmp/outfiles/id2.2.txt >> ./tmp/outfiles/all-id.txt;
 				cat ./tmp/outfiles/id4.txt >> ./tmp/outfiles/all-id.txt;

		
cat ./tmp/outfiles/all-id.txt| sed 's/^>//g' > ./tmp/outfiles/all_matches.txt
	sort ./tmp/outfiles/all_matches.txt | uniq  > ./tmp/outfiles/id-eff.txt 


####
