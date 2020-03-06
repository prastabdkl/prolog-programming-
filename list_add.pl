%adding an item.
add(X,L,[X|L]).

%queries
%add(b,[c,d,e],Z).
%add(A,[c,d,e],[b,c,d,e]).

%del(Y,[Y],[]).
del(X,[X|Tail],[Tail]).
del(X,[Y|Tail], [Y|Tail1]) :- del(X,Tail,Tail1).

member2(X,List) :- del(X,List,_).

%queries
%del(a,[a,b,c,d,e,f],X).
%del(c,[a,b,c,d,e,f],X).
%del(f,[a,b,c,d,e,f],X).
%del(a,[a,b,a,a],L).