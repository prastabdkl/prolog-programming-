cube :-
	read(stop),!.

cube:-
	read(N),
	C is N*N*N,
	write('The cube of'),
	write(N),
	write('is'),
	write(C),
	nl,
	cube.

