use strict;
use warnings;

my $limit = 2_000_000;
my @list = (1) x $limit;
$list[0] = 0;
$list[1] = 0;

for (my $i = 2; $i <= sqrt($limit); $i++) {
    if ($list[$i]) {
        for (my $j = $i * $i; $j < $limit; $j += $i) {
            $list[$j] = 0;
        }
    }
}

my $sum = 0;
for my $i (2 .. $limit - 1) {
    $sum += $i if $list[$i];
}

print "The sum of all primes below $limit is $sum\n";
