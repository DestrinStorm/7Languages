%Totally stolen answer
min([Min],Min).
min([A,B|C],M) :- A =< B, min([A|C],M).
min([A,B|C],M) :- A > B, min([B|C],M).


%FAILED EXPERIMENTS
%min(A,B,Min) :- A < B -> Min = A ; Min = B.
%min([A|[B|C]],Min) :- A < (B < C -> Min = B ; Min = C) -> Min = A ; Min = B.
%min([A|B],Min) :- A < B -> Min = A ; Min = B.

%min(A,[],A).
%min(A,[Head|Tail],Min) :- min(Head,Tail,C), A < C -> Min = A ; Min = C.
%min([Head|Tail],Min) :- min(Head,Tail,Min).

%min(A,B,Min) :- A < B -> Min = A ; Min = B.
%min([1,2],What).
%min([2,1],What).
%min([1,2],What).
%min([1,2,3],What).
%min([2,3,1],What).
%min([1356,136,73,12346,1361,14627],What).