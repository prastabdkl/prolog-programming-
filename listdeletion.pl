del(Y,[Y],[]).
del(X,[X|Tail],[Tail]).
del(X,[Y|Tail], [Y|Tail1]) :- del(X,Tail,Tail1).

insert(X,List,BiggerList) :-
	del(X,BiggerList,List).

%del(c,[a,b,c,d,e,f],X).