use strict;
use warnings;

my @array = (1, 1);
my $sum = 0;
my $temp=0;

while ($sum <4000000){
	my $arrayLength= scalar @array;
	$sum = $array[$arrayLength-2] + $array[$arrayLength-1];
	push(@array, $sum);
}
pop(@array);



my $totalSum=0;
my $finalLength= scalar @array;
for(my $i=0; $i<$finalLength; $i++){
	if($array[$i]  % 2 ==0 ){
	

$totalSum+=$array[$i]
}
}

print $totalSum .  "\n";





