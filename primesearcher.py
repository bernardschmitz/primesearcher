
import math
import time

def isPrime(n) :

	s = math.sqrt(n)

	i = 3
	while i<=s :
		if n % i == 0 :
			return 0
		i += 2
	return 1



candidate = 10000001

numConsidered = 0

numPrimes = 0

startTime = time.time()

while numConsidered < 5000000 :

	if isPrime(candidate) :
		numPrimes += 1

	candidate += 2
	numConsidered += 1

	if numConsidered % 1000000 == 0 :
		t = time.time() - startTime
		print t, numConsidered, numPrimes, numPrimes*100.0/numConsidered, numConsidered/t, numPrimes/t


