use strict;
use warnings;

sub mcd{
      my ($a, $b) = @_;
        while($b!=0){
            ($a, $b)= ($b, $a % $b);
        }
    return $a;
}

sub mcm{
    my ($a,$b)=@_;
    return $a * $b / mcd($a, $b);
}


my $result=1;


    for(my $i=2; $i<21; $i++){
        $result = mcm($result, $i)
    }

print "The final result is $result \n";

