#Fibonnaci sequence 1,1,2,3,5,8,13...

fib := method(i,fibseq := list();fibseq append(1);fibseq append(1);for(x,2,(i-1),1, fibseq append(fibseq at(x-2)+fibseq at(x-1)) );fibseq at(i-1) println)

fib(3)
fib(5)
fib(7)
fib(20)