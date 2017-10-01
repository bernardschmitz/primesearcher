

: isprime 
	dup 0 d>f 
	fsqrt 
	f>d drop 
	2 +
	3 
	+do 
		dup i mod 
		0= 
		if 
			drop 0
			unloop exit 
		then 
		2 
	+loop 
	drop 1 
;


2variable start-time
fvariable t
variable numPrimes

: report 
	utime start-time 2@ d- d>f 1000000e0 f/ fdup t f! f. 
	dup .
	numPrimes @ dup .
	dup 0 d>f 100e0 f* over 0 d>f f/ f.
	swap 0 d>f t f@ f/ f. 
	0 d>f t f@ f/ f. 
	cr
;


: primesearcher 
	0 numPrimes !
	utime start-time 2!
	10000001 5000000 0
	+do
		dup
		isprime 
		if
			1 numPrimes +!
		then
		2 +
		i 1+ dup 1000000 mod
		0=
		if
			report
		else
			drop
		then
	loop
	drop
;


primesearcher

bye

