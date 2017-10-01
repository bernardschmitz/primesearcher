
echo Forth && /usr/bin/time gforth primesearcher.fs
echo C && /usr/bin/time ./primesearcher
echo Fortran && /usr/bin/time ./a.out
echo Perl && /usr/bin/time perl primesearcher.pl
echo Python && /usr/bin/time python primesearcher.py

