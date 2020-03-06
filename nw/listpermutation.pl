del(X,[X|TAIL],TAIL).
del(X,[Y|TAIL], [Y|TAIL1]) :- del(X,TAIL,TAIL1).

list_permutation([],[]).
list_permutation(L,[X|P]) :- del(X,L,L1),list_permutation(L1,P).

%doesnot work
%permutation([a,b,c],X).
%del(c,[a,b,c,d,e,f],X).
