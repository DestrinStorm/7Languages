#Fibonnaci sequence 1,1,2,3,5,8,13...
#for(i,1,11,1,i println)

fib := method(fibseq := list();fibseq append(1);fibseq append(1);for(x,2,(call sender doMessage(call message argAt(0))-1),1, fibseq append(fibseq at(x-2)+fibseq at(x-1)) );fibseq at(call sender doMessage(call message argAt(0))-1) println)

fib(3)
fib(5)
fib(7)
fib(20)