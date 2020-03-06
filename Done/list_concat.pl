%a program for list concatination
conc([],L,L).
conc([X1 | L1],L2, [X1|L3]) :-
	conc(L1,L2,L3).

%conc([a,b,c],[1,2,3],L).
%conc([a,b,c],L,[a,b,c,d,e,f,g,h]).
%conc([],L,[a,b,c,d,e,f,g,h]).
%conc([a,[b,c],d],[a,[],b],L).
%conc([],L,[]).

%decomposing
%conc(L1,L2,[a,b,c]).

%look for pattern
%conc(Before,[may|After],[jan,feb,mar,april,may,june,july,aug,sep,oct,nov,dec]).

%find immediate predecessor and successor
%conc(_,[Month1,may,Month2|_],[jan,feb,mar,april,may,june,july,aug,sep,oct,nov,dec]).

%delete from some list L1
%L1 = [a,b,z,z,c,z,z,z,d,e],conc(L2,[z,z,z|_],L1).

%Finding member
%member1(X,L) :- conc(L1,[X,L2],L).

%member1(X,L) :- conc(_,[X,_],L).
