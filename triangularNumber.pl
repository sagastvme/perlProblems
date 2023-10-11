use strict;
use warnings;

my $n = 1;
my $triangleNumber = 0;

while (1) {
    $triangleNumber += $n;   

    my $numDivisors = find_divisors($triangleNumber);
    if ($numDivisors > 500) {
        last; 
    }

    $n++;
}

print "The first triangle number with over 500 divisors is $triangleNumber\n";

sub find_divisors {
    my ($number) = @_;
    my @divisors = ();

    for (my $i = 1; $i <= sqrt($number); $i++) {
        if ($number % $i == 0) {
            push @divisors, $i;
            if ($i != $number / $i) {
                push @divisors, $number / $i; 
            }
        }
    }

    return scalar @divisors;
}
