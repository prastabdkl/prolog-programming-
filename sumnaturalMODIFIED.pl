findSum :-
    read(N),
    sum(N,Sum),
    write('The Sum of first '),
    write(N),
    write(' natural numbers is '),
    write(Sum).

sum(N,Sum) :-
    Sum is (N + 1) * N / 2.
