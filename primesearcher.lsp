


;(defun fr (x)
;        (if (zerop x) 1
;		                (* x (fr (1- x)))))
;
;						(defun fi (x)
;						        (let ((f 1))
;								                (dotimes (i x f) (setf f (* f (1+ i))))))
;
;
;												(setq n 150)
;
;												(time (dotimes (x n) (format t "fac(~s)~T=~T~s~%" x (fr x))))
;
;												(time (dotimes (x n) (format t "fac(~s)~T=~T~s~%" x (fi x))))


; (+ 0.00  (/ (get-internal-run-time) internal-time-units-per-second))

(defun primesearcher ()
	(let ((candidate 10000001) (numPrimes 0) (numConsidered 0))
		(loop while (< numConsidered 5000000) do 
			(setq candidate (+ candidate 2))
			(setq numConsidered (+ numConsidered 1))
			(if (zerop (mod numConsidered 1000000)) (format t "~s ~s~%" (get-internal-run-time) numConsidered)))))


(primesearcher)

; 
; #include <stdio.h>
; #include <math.h>
; #include <time.h>
; #include <unistd.h>
; 
; int isPrime(long n) {
; 
; 	long i;
; 	long s = (long)sqrt((double)n);
; 
; 	for(i=3; i<=s; i+=2) {
; 		if(n % i == 0) 
; 			return 0;
; 	}
; 
; 	return 1;
; }
; 
; int main(int argc, char **argv) {
; 
; 	long candidate = 10000001;
; 
; 	long numConsidered = 0;
; 	long numPrimes = 0;
; 
; 	clock_t startTime = clock();
; 
; 	while(numConsidered < 5000000) {
; 		if(isPrime(candidate)) {
; 			numPrimes++;
; 		}
; 		candidate += 2;
; 		numConsidered++;
; 
; 		if(numConsidered % 1000000 == 0) {
; 			long t = (clock() - startTime)*100/CLOCKS_PER_SEC;
; 			printf("%f %ld %ld %f %f %f\n",  t/100.0, numConsidered, numPrimes, 
; 					(double)numPrimes*100.0/(double)numConsidered, 
; 					(double)numConsidered/(t/100.0), (double)numPrimes/(t/100.0));
; 
; 		}
; 	}
; 
; 	return 0;
; }
; 
; 
