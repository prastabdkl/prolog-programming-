child_of(mary, steve).
child_of(mary,anne).
child_of(alice,anne).
child_of(alice,steve).

%child_of(ram, steve).
%child_of(ram,anne).
%child_of(shyam,anne).
%child_of(shyam,steve).
%child_of(hari,ram).

child_of(jane,steve).
child_of(leslie,steve).
child_of(steve,ema).
child_of(sally,ema).

%child_of(steve,zen).
%child_of(sally,zen).

child_of(anne,nani).
child_of(anne,john).
child_of(james,john).

%female(anne).

female(mary).
female(alice).
female(jane).
female(nani).
female(ema).

sisters(Person1,Person2) :-
	child_of(Person1,Parent1),
	child_of(Person1,Parent2),
	child_of(Person2,Parent1),
	child_of(Person2,Parent2),
	not(Parent1 = Parent2),
	female(Person1),
	female(Person2),
	not(Person1 = Person2).


brothers(Person1,Person2) :-
	child_of(Person1,Parent1),
	child_of(Person1,Parent2),
	child_of(Person2,Parent1),
	child_of(Person2,Parent2),
	not(Parent1 = Parent2),
	not(female(Person1)),
	not(female(Person2)),
	not(Person1 = Person2).

grandmother(X,Y):-
	child_of(Y,Z),
	child_of(Z,X),
	female(X).

uncle(X,Y):-
	brothers(X,Z),child_of(Y,Z).

grandparent(X,Y):-
	child_of(Y,Z),
	child_of(Z,X).
uncles(X,Y):-
	grandparent(Z,Y),
	child_of(X,Z),
	not(female(X)).

husband(X,Y) :-
	child_of(Z,X),
	child_of(Z,Y),
	female(Y),
	not(female(X)).

%The case to find the brother in law for a girl has jethan or debar
%broinlaw(X,Y) :- male(X),female(Y), brothers(X,P),married(P,Y).
%the case defines bhinaju or jwai for females
%broinlaw(X,Y) :- male(X),female(Y),married(X,Z),sisters(Z,Y).



brother_in_law(X,Z):-
	child_of(Y,W),
	child_of(Y,Z),
	female(W),
	not(female(Z)),
	child_of(X,U),
	child_of(W,U),
	not(female(X)),
	not(female(Z)).

brother_in_law(Person2,Z):-
	child_of(Y,Z),
	child_of(Y,Person1),
	female(Z),
	child_of(Person1,Parent1),
	child_of(Person1,Parent2),
	child_of(Person2,Parent1),
	child_of(Person2,Parent2),
	not(Parent1 = Parent2),
	not(female(Person1)),
	not(female(Person2)),
	not(Person1 = Person2).

bil(X,Y):-
	child_of(Z,A),child_of(Z,B),
	child_of(Y,A),child_of(Y,B),
	husband(X,Z),female(Z),
	not(female(X)),not(female(Y)).






