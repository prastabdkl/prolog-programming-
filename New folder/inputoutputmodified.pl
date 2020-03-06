cube :-
    read(stop),
    !.

cube :-
    read(N),
    C is N*N*N,
    write(C),
    cube.
