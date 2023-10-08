use strict;
use warnings;

my $largest_palindrome = 0;

for (my $i = 999; $i > 99; $i--) {
    for (my $j = 999; $j > 99; $j--) {
        my $multiplication = $i * $j;
        if (isPalindrome($multiplication) && $multiplication > $largest_palindrome) {
            $largest_palindrome = $multiplication;
        }
    }
}

print "The largest palindrome is $largest_palindrome\n";

sub isPalindrome {
    my $num = $_[0];
    return $num eq reverse $num;
}
