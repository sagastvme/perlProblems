use strict;
use warnings;


my $counter=0;
my $testNumber=2;
while($counter!=10001){

    if(isPrime($testNumber)){
        $counter++;
    }
    $testNumber++;

}
$testNumber=$testNumber-1;
print "The 10001st prime number is $testNumber \n";


sub isPrime {
    my $num = $_[0];

    
    return 0 if ($num <= 1);

   
    return 1 if ($num == 2);
    return 0 if ($num % 2 == 0);

    my $limit = sqrt($num);
    for (my $i = 3; $i <= $limit; $i += 2) {
        return 0 if ($num % $i == 0);
    }
    return 1;
}