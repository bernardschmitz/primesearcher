
import java.io.*;
import java.util.*;


public class PrimeSearcher {

	private static boolean isPrime(long n) {

		long sqrt = (long)Math.sqrt(n);

		for(long i=3; i<=sqrt; i+=2) {
			if(n % i == 0) 
				return false;
		}

		return true;
	}

	static public void main(String arg[]) {

		long candidate = 10000001;
		int numConsidered = 0;
		int numPrimes = 0;

		double startTime = System.currentTimeMillis();

		while(numConsidered < 5000000) {
			if(isPrime(candidate)) {
				numPrimes++;
			}
			candidate += 2;
			numConsidered++;

			if(numConsidered % 1000000 == 0) {
				double t = (double)(System.currentTimeMillis() - startTime)/1000.0;

				System.out.println(t + " " + numConsidered + " " + numPrimes + " " + numPrimes*100.0/numConsidered 
					+ " " + numConsidered/t + " " + numPrimes/t );
			}
		}
	}
}

