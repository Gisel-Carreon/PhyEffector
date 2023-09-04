use strict;
use warnings;


my $list = './tmp/outfiles/id2.2.txt';
my $fasta ='./tmp/outfiles/input.fasta';
my $out = './tmp/Phobius_result/secretomPhobius.fasta';
my %select;
open L, "$list" or die;

while (<L>) {
    chomp;
    s/>//g;
    $select{$_} = 1;
}
close L;

$/ = "\n>";
open O, ">$out" or die;
open F, "$fasta" or die;
while (<F>) {
    s/>//g;
    my ($id) = split (/\n/, $_);
    print O ">$_" if (defined $select{$id});
}
close F;
close O;
