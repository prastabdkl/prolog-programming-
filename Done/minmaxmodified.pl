/* a prolog program to calculate maximum and minimum of two numbers*/
max :-
    write('Enter first number'),
    read(X),
    write('Enter second number'),
    read(Y),maxi(X,Y).

maxi(X,Y):- X>Y, write(X),write(' is greater').
maxi(X,Y):- X<Y, write(Y),write(' is greater').

min(X,Y,X):-X<Y.
min(X,Y,Y):-X>Y.


