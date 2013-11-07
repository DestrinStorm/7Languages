%Write a function that uses recursion to return the number of words in a string.
%wordsinstring:wordsinstring("Hello world").
%wordsinstring:wordsinstring("Soft! What light through yonder window breaks?").
-module(wordsinstring).
-export([wordsinstring/1]).
 
wordsinstring([]) -> 0;
wordsinstring(Sentence) -> count(Sentence, 1).
 
count([], Count) -> Count;
count([32|Tail], Count) -> count(Tail, Count + 1);
count([_|Tail], Count) -> count(Tail, Count).


%Write a function that uses recursion to count to ten.
%Write a function that uses matching to selectively print “success”
%or “error: message” given input of the form {error, Message} or success.