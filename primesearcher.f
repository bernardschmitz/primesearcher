
      program primesearcher
      implicit none

      integer candidate, numConsidered, numPrimes
      real st, t
      logical isPrime

      candidate = 10000001
      numConsidered = 0
      numPrimes = 0

      st = second()

      do while (numConsidered .lt. 5000000)
           if (isPrime(candidate) .eqv. .true.) then
                numPrimes = numPrimes + 1
           end if
           numConsidered = numConsidered + 1
           candidate = candidate + 2
           if (mod(numConsidered, 1000000) .eq. 0) then
                t = second() - st;
                print *, t, numConsidered, numPrimes, 
     .numPrimes*100.0/numConsidered, 
     .numConsidered/t, numPrimes/t
           end if
      end do

      end

      function isPrime(n)
      implicit none
      logical isPrime
      integer n
      integer s
      integer i

      s = sqrt(real(n))

      do i=3, s
           if (mod(n, i) .eq. 0) then
                isPrime = .false.
                return
           end if
      end do

      isPrime = .true.
      return

      end

