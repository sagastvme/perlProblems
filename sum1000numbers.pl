use strict;
use warnings;
my $sumTotal=0;
for (my $i=3; $i<1000; $i++){
	if($i % 3==0 || $i % 5==0){
		$sumTotal+=$i;
	}
}
print "$sumTotal\n";
