

use strict;
use warnings;




for my $a (1..332) {
    for my $b ($a+1..499) {
        my $c = 1000 - $a - $b;
        
        if ($c > $b && isPythagorean($a, $b, $c)) {
            print "The valid sequence is $a, $b, $c\n";
            print "The product abc is " . ($a * $b * $c) . "\n";
            exit;
        }
    }
}


sub resultWanted{
        my ($a, $b, $c)=@_;

        if($a+$b+$c==1000){
            return 1;
        }
        return 0;
}

sub isPythagorean{
    my ($a, $b, $c)=@_;

    if( ($a ** 2 + $b ** 2 == $c **2) && $a<$b<$c ){
        return 1;
    }
    return 0;
}