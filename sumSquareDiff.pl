use strict;
use warnings;

sub sumAndSquare {
    my ($num) = @_;
    return (($num * ($num + 1)) / 2) ** 2;
}

sub totalSquare {
    my ($num) = @_;
    return ($num * ($num + 1) * (2 * $num + 1)) / 6;
}

use constant N => 100;

print "The diff is ", sumAndSquare(N) - totalSquare(N), "\n";
