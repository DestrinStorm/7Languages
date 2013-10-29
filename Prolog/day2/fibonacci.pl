fib(N,_,N).
fib(N1,N2,N) :- N3 is N1+N2, fib(N2,N3,N).