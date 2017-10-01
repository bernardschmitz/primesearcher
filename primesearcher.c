
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <unistd.h>

int isPrime(long n) {

	long i;
	long s = (long)sqrt((double)n);

	for(i=3; i<=s; i+=2) {
		if(n % i == 0) 
			return 0;
	}

	return 1;
}

int main(int argc, char **argv) {

	long candidate = 10000001;

	long numConsidered = 0;
	long numPrimes = 0;

	clock_t startTime = clock();

	while(numConsidered < 5000000) {
		if(isPrime(candidate)) {
			numPrimes++;
		}
		candidate += 2;
		numConsidered++;

		if(numConsidered % 1000000 == 0) {
			long t = (clock() - startTime)*100/CLOCKS_PER_SEC;
			printf("%f %ld %ld %f %f %f\n",  t/100.0, numConsidered, numPrimes, 
					(double)numPrimes*100.0/(double)numConsidered, 
					(double)numConsidered/(t/100.0), (double)numPrimes/(t/100.0));

		}
	}

	return 0;
}


