/* a prolog program to calculate maximum and minimum of two numbers*/

max(X,Y,X):-X>Y.
max(X,Y,Y):-X<Y.

min(X,Y,X):-X<Y.
min(X,Y,Y):-X>Y.


