use strict;
use warnings;

my $number= 600851475143;

sub isPrime {
    my $numParam = $_[0];
    my $sqrt = int(sqrt($numParam));
    for (my $i = 2; $i <= $sqrt; $i++) {
        if ($numParam % $i == 0) {
            return 0;
        }
    }
    return 1;
}

sub largestPrimeFactor {
    my $num = $_[0];
    for (my $i = int(sqrt($num)); $i > 1; $i--) {
        if ($num % $i == 0 && isPrime($i)) {
            return $i;
        }
    }
    return $num;
}

my $largest_factor = largestPrimeFactor($number);
print "The largest prime factor of $number is $largest_factor\n";