max :-
    write('A prolog program to calculate maximum and minimum of two numbers'),
    nl,
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),maxi(X,Y).

maxi(X,Y):- X>Y, write(X),write(' is greater than '),write(Y).
maxi(X,Y):- X<Y, write(Y),write(' is greater than '),write(X).

min :-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),mini(X,Y).

mini(X,Y):- X<Y, write(X),write(' is smaller than '),write(Y).
mini(X,Y):- X>Y, write(Y),write(' is smaller than '),write(X).

