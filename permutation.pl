%del(Y,[Y],[]).
del(X,[X|Tail],Tail).
del(X,[Y|Tail], [Y|Tail1]) :- del(X,Tail,Tail1).

%del( a, [a,b,a,a], L).

%del(c,[a,b,c,d,e,f],X).

permutation2( [], [] ).
permutation2( L, [X|P] ) :-
	del( X, L, L1),
	permutation2( L1, P).

%permutation( [red,blue,green], P).