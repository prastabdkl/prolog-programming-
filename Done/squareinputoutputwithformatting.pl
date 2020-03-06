square :-
    write( 'Enter the side of square '),
    read( X),
    area( X).

area(stop) :- !.

area( N) :-
    C is N*N,
    write('Area of square with side '), write(N), write('is'),
    write( C), nl,
    square.
