reverse(List,[]).
reverse([Head|Tail], List) :- reverse(Tail, Head).