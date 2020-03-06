sum :-
    read(N),
    process(N).

process(N) :-
    Sum is (N + 1) * N / 2,
    write('The Sum of first '),
    write(N),
    write(' natural numbers is '),
    write(Sum).
