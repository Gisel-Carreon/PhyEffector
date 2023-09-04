#!/bin/bash 
#
#
#¡Welcome to PhyEffector!
#
# 
#
# Edit this script to suit your installation needs.
# This program is distributed in the hope that it will be useful.
#
#
# Contact us:
# KGCA carreon.gisel@gmail.com
# BCC  blondy.canto@cicy.mx
#
#
# Be sure to installing the next packages:
#
# Linux/Ubuntu 20.04.4 or later
# Perl 5.30.00 or later
# Bioperl 1.7.8 or later
# Python 2.7.18 or later
# Biopython 1.70 or later
# BLAST 2.9.0 or later
#
#
#
	
read -p "--------------- PhyEffector started ---------------" -t 2;

echo -e  "\n             ";

read -p "----------------- Please indicate path to FASTA: $" -t 2;


###--make temporally directory

mkdir -p ./tmp

mkdir -p ./tmp/outfiles

read file;

cat $file > ./tmp/outfiles/input.fasta;


###--Secretion proteins analysis --  prediction by SignalP4.1 server

echo "----------------- Searching secretion signal with SignalP 4.1 -------------";

sh ./codes/secretionfilter.sh $fasta


###--Execute the TMHMM2.0 analysis

echo "----------------- Analyses tmhmm domain with TMHMM2.0 -------------";

sh ./codes/transmembranal-job.sh 

###--Secretion proteins analysis --  prediction by Phobius server

echo "----------------- Searching secretion signal with Phobius -------------";


echo "----------------- Running homology analysis ----------------";

#**NOTE: We include the true effectors database for your use. If you have more information or more effectors to include in the database. Please use the next comand for database formating**
#
#formatdb -i </path/tho/the/fasta/file/.fasta> -p T -o T
#
#You can modifying the parameters for your convenience

sh ./codes/homology_analyses.sh


###--Eliminate redundance


echo "----------------- Elimination of redundance -------------";

sh ./codes/clean_redundances.sh


###--Complete analysis export effectors in FASTA file

mkdir -p ./Result

perl ./codes/fasta.pl ./tmp/outfiles/id-eff.txt ./tmp/outfiles/input.fasta ./Result/Effectors.fasta;


echo "----------------- Complete analysis -------------";

##########################################################
