
%?-showlist([ram,shyam,hari]).
%ram		shyam 		hari

showlist([]).
showlist([Head|Tail]) :-
	write(Head),tab(4),
	showlist(Tail).
%?-showlist([ram,shyam,hari]).
%| ram
%| shyam
%| hari

showlist([]).

showlist([Head|Tail]) :-
	write(Head),nl,
	showlist(Tail).

%?-showlist([[a,b,c],[d,e,f],[g,h,i]]).
%a	b	c
%d	e	f
%g	h 	i

showlist([]).
showlist([Head|Tail]) :-
	doline(Head),nl,
	showlist(Tail).

doline([]).
doline([Head|Tail]) :-
	write(Head),tab(4),
	doline(Tail).

%?- showstar([3,4,5,6]).
%***
%****
%*****
%******
showlist([Head|Tail]):-
	stars(Head),nl,
	showlist(Tail).

stars(N) :-
	N>0,
	write(*),
	N1 is N-1,
	stars(N1).

stars(N) :- N =< 0.













