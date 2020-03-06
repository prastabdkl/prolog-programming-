
%program
prog_2(L,R) :- acc(L,1,R).
acc([],A,A).
acc([H|T],A,R):- A1 is A*H, acc(T,A1,R).

%Query
% prog_2([1,2,3,4],R).

% prog_2([1,2,3,4],_50) :- acc([1,2,3,4],1,_50)
			L 		R
%acc([1|2,3,4],1,_50) :- A1 is 1, acc([2,3,4],1,_50).

%acc([2|3,4],1,_50) :- A1 is 2, acc([3,4],2,_50).

%acc([3|4],2,_50):- A1 is 6, acc([4],6,_50).

%acc([4|[]],6,_50) :- A1 is 24, acc([],24,_50).

%acc([],24,24).















%program
prog_3([], Y, [Y]).
prog_3([H|T], Y, [H|T1]):- prog_3(T, Y, T1).

%query
% prog_3([a,b,c], 5 , R).

[a,b,c,5]







prog_4(X, [X]).
prog_4(X, [_|L]) :- prog_4(X, L).
%Query: ?- prog_4(X, [a, b, c, d]).






prog_5([X|Xs], 1, Xs).
prog_5([Y|Xs], K, [Y|Ys]) :-
    K > l,
    K1 is  K- 1,
    prog_5(Xs, K1, Ys).
%Query: ?- prog_5([a, b, c, d], 2, R).

prog_1([],[]).
prog_l([X|T],[X,X|T1]):- 
	prog_1(T,T1).
% prog_1([a,b],R).