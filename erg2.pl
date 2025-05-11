use strict;
use warnings;


my $seq = 'ACGAAATGAAAAAATGTAGATGTAACTGACCATGGGGTGA';
my $rna = '';

my $count=()=$seq=~/ATG/g;
print "Vrethikan kwdikonia enarkshs: $count\n";

my $pos=0;
while($pos<length($seq)){
    my $start_pos =index($seq,'ATG',$pos);
    last if $start_pos ==-1;

    print"Vrethike  ATG sto shmeio  $start_pos\n";

    my $orf_valid = 0;
    my $orf_seq = '';
    for(my $i=$start_pos+3; $i<length($seq); $i+=3) {
        my $codon=substr($seq,$i,3);  

    if ($codon eq 'TAA' || $codon eq 'TAG' || $codon eq 'TGA') {
            print "Dekth allhlouxia apo $start_pos mexri $i: ";
            $orf_seq=substr($seq,$start_pos,$i-$start_pos+3);
             print $orf_seq,"\n";
            $orf_valid=1;
            last;  
        }
    }
    if ($orf_valid) {
        $seq=$orf_seq;
        last;
    }
    $pos=$start_pos+3;
}


my %dna_to_rna = ('A'=>'A','T'=>'U','C'=>'C','G'=>'G');

for (my $i=0;$i<length($seq);$i++) {
    my $base = substr($seq,$i,1);
    $rna .= $dna_to_rna{$base} // '';
}

print "RNA: $rna\n";