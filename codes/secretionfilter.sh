#!bin/bash
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


mkdir -p ./tmp/SignalP_result

perl ./bin/signalp/4.1/signalp -f short -n ./tmp/SignalP_result/secreted_proteins.gff3 -t gram+ -s notm -m ./tmp/SignalP_result/processed_fasta.fasta  ./tmp/outfiles/input.fasta  > ./tmp/SignalP_result/signal.gff3


cut -f1 ./tmp/SignalP_result/secreted_proteins.gff3 | sed 's/^##.*/-/g' | sed 's/^/>/g' > ./tmp/SignalP_result/idwithSP.fasta

perl ./codes/signaljob.pl


mkdir -p ./tmp/Phobius_result

perl ./bin/phobius/1.01/phobius.pl -short ./tmp/outfiles/input.fasta > ./tmp/Phobius_result/resultPhobius.fasta
cat ./tmp/Phobius_result/resultPhobius.fasta | grep '  0  Y' | cut -d' ' -f1| sed 's/^/>/g' > ./tmp/Phobius_result/idwithspPhobius.fasta

cat ./tmp/Phobius_result/resultPhobius.fasta | grep '  1  Y' | cut -d' ' -f1| sed 's/^/>/g' > ./tmp/Phobius_result/idwithsptmdPhobius.fasta

cat ./tmp/Phobius_result/idwithspPhobius.fasta | grep '>' > ./tmp/outfiles/id2.2.txt
cat ./tmp/Phobius_result/idwithsptmdPhobius.fasta | grep '>'>> ./tmp/outfiles/id2.2.txt

perl ./codes/phobiusjob.pl
