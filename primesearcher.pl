
use strict;

use Time::HiRes qw(time);


my $candidate = 10000001;

my $numConsidered = 0;
my $numPrimes = 0;

my $startTime = time();

while($numConsidered < 5000000) {
	if(isPrime($candidate)) {
		$numPrimes++;
	}
	$candidate += 2;
	$numConsidered++;

	if($numConsidered % 1000000 == 0) {
		my $t = (time() - $startTime);
		printf("%f %ld %ld %f %f %f\n",  $t, $numConsidered, $numPrimes, 
			$numPrimes*100.0/$numConsidered, 
			$numConsidered/($t), $numPrimes/($t));
	}
}


sub isPrime {

	my $n = shift;
	my $s = sqrt($n);

	for(my $i=3; $i<=$s; $i+=2) {
		if($n % $i == 0) {
			return 0;
		}
	}

	return 1;
}

