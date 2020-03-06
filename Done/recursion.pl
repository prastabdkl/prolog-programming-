female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
male(peter).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bob,peter).
parent(peter,jim).


/*
* some additonal codes
* finding predessor using recursion
*
*/
predessor(X,Z):-parent(X,Z).
predessor(X,Z):-parent(X,Y),predessor(Y,Z).
