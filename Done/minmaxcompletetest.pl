minmax :-
    nl,write('A prolog program to compare two numbers'),
    nl,
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),process(X,Y).

process(X,Y) :-
    maxi(X,Y), mini(X,Y),minmax.

maxi(X,Y):- X>Y, write(X),write(' is greater than '),write(Y),nl.
maxi(X,Y):- X<Y, write(Y),write(' is greater than '),write(X),nl.

mini(X,Y):- X<Y, write(X),write(' is smaller than '),write(Y),nl.
mini(X,Y):- X>Y, write(Y),write(' is smaller than '),write(X),nl.

