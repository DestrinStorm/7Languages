min(A,A,A).
min(A,B,B) :- B < A.
min(A,B,A) :- A < B.

minInList([X|XS], M) :- minInList(XS, M1), min(X, M1, M).
minInList([X], X).