use strict;
use warnings;

my $seq;
$seq='ATGCTAGC';
my $length = length($seq);
print "$length\n";
print" $seq\n";
$seq = lc($seq);
print"$seq\n";
$seq = reverse($seq);
print"$seq";