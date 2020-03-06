
start(2,0):-write(' 4lit Jug:   2 | 3lit Jug:   0|\n'),
            write('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n'),
            write('Goal Reached! Congrats!!\n'),
            write('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n').
start(X,Y):-write(' 4lit Jug:   '),write(X),write('| 3lit Jug:   '),
            write(Y),write('|\n'),
            write(' Enter the move::'),
            read(N),
            contains(X,Y,N).

contains(_,Y,1):-start(4,Y).
contains(X,_,2):-start(X,3).
contains(_,Y,3):-start(0,Y).
contains(X,_,4):-start(X,0).
contains(X,Y,5):-N is Y-4+X, start(4,N).
contains(X,Y,6):-N is X-3+Y, start(N,3).
contains(X,Y,7):-N is X+Y, start(N,0).
contains(X,Y,8):-N is X+Y, start(0,N).

