###PhyEffector_v.1: Prediction of canonical and no-canonical effectors in phytoplasma proteomes.


###(2023) Karla Gisel Carreón-Anguiano,Sara Vila-Luna, Luis Sáenz-Carbonell & Blondy Canto-Canché.
###Contact: carreon.gisel@gmail.com; cantocanche@cicy.mx
              
                
     ******   PLEASE DO NOT REDISTRIBUTE THE PACKAGE   ******


INSTALLATION INSCRUCTIONS


DESCRIPTION

PhyEffector produces ab initio predictions of canonical and non-canonical effectors proteins using as an input the whole proteome.The method uses homology with know phytoplasma effectors.

We hope that this code can become a plataform enabling multiple effector analyses and effector discovery.

We would welcome any feedback, suggestions, questions, issue reports for the code. You can find more contact details at the bottom of this page (#Contact us#)


###CITATION AND FURTHER INFORMATION
KGCA carreon.gisel@gmail.com
BCC cantocanche@cicy.mx


##PREREQUISITES
Linux/Ubuntu 20.04.4 LTS or later
Perl 5.30.00 or later
Bioperl 1.7.8 or later 
Python 2.7.18 or later
Biopython 1.70 or later
BLAST 2.9.0 or later.


###MINIMAL REQUIREMENTS
2 CPUs
4 GB RAM
A bash terminal in a unix-type environment, we primarily test on the current ubuntu LTS.


###Pre-installation for use PhyEffector:

PhyEffector_v.1 has been written in Perl and Bash, the code is available for Linux. The standard UNIX tools perl, awk (or nawk etc.), [t]csh, paste and sed must be available on the system.


PhyEffector_v.1 launches several other softwares and parses their output
before the actual predictions can be made. If those softwares are not on
the system already they will have to be installed before installation.
The softwares are as follows:

	SignalP 4.1	http://www.cbs.dtu.dk/services/SignalP/
			"SignalP 4.0: discriminating signal peptides from 
			transmembrane regions".Nature Methods, 8:785-786 (2011).
			Thomas Nordahl Petersen,Søren Brunak, Gunnar von 
			Heijne and Henrik Nielsen.			
			contact software@cbs.dtu.dk

	TMHMM 2.0	http://www.cbs.dtu.dk/services/TMHMM/
			"Predicting transmembrane protein topology with a
			hidden Markov model: Application to complete genomes".
			Journal of Molecular Biology, 305(3):567-580, January 2001.			
			A. Krogh, B. Larsson, G. von Heijne, and E. L. L. Sonnhammer.			
			contact software@cbs.dtu.dk	

	Phobius		http://phobius.sbc.su.se/
			"Advantages of combined transmembrane topology and 
			signal peptide prediction--the Phobius web server".
			Nucleic Acids Res., 35:W429-32, July 2007
			Lukas Kall, Anders Krogh, Erik Sonnhammer.
			contact lukall@u.washington.edu


Please, install each program into the fallowing directory paths:

SignalP	=	path/to/PhyEffector_v.1/bin/signalp/4.1
TMHMM	=	path/to/PhyEffector_v.1/bin/tmhmm/tmhmm-2.0c
Phobius	=	path/to/PhyEffector_v.1/bin/phobius/1.01

			


###Download the latest release from this github repo (e.g. PhyEffector_v.1.zip).

1.Unpack PhyEffector_v.1 in your desired location:

unzip PhyEffector_v.1.zip
chmod -R 777 PhyEffector_1.0/
cd PhyEffector_v.1/


2.For homolgy analyses, PhyEffector uses Blast. You need to install blast tool into you local computer, please see the next page for installation: 
https://www.ncbi.nlm.nih.gov/books/NBK569861/


3. Run PhyEffector:
./PhyEffector.sh

or

bash PhyEffector.sh

or 

sh PhyEffector.sh




###Contributing
If you can help us understand the needs of your research community and what proteins you are interested in (perhaps beyond known effectors), we would love to collaborate.
We will ensure that proper credit is given, which could include future authorship of more substantial contributions. It would be wonderful to develop a community around this.
Please contact us for more information or for any suggestion.




