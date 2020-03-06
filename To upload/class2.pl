?-showlist([ram,shyam,hari]).
| ram
| shyam
| hari

showlist([]).

showlist([Head|Tail]) :-
	write(Head),nl,
	showlist(Tail).

?-showlist([[a,b,c],[d,e,f],[g,h,i]]).
a	b	c
d	e	f
g	h 	i

showlist([]).
showlist([Head|Tail]) :-
	doline(Head),nl,
	showlist(Tail).

doline([]).
doline([Head|Tail]) :-
	write(Head),tab(4),
	doline(Tail).

abc
def
ghi

