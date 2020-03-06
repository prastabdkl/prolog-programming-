interm(0,zero).
interm(1,one).
interm(2,two).
interm(3,three).
interm(4,four).
interm(5,five).
interm(6,six).
interm(7,seven).
interm(8,eight).
interm(9,nine).

inwords([],[]).
inwords((X|TAIL),(T|Z)) :- interm(X,T), inwords(TAIL,Z).

%inwords([0,3,4,5,5,6,7,8,8,9],X).