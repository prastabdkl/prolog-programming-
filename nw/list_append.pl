list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

list_append(A,T,T) :- list_member(A,T),!.
list_append(A,TAIL,[A|TAIL]).

%does not work
%list_append([a],[b,c,d],L).
%listing. gives codes
%list_member(a,[a,b,c,d,e,f]).
%list_member(*,[a,b,c,d,e,f]).
%list_member(X,[a,b,c,d,e,f]). to list all the members
%member(a,[a,b,c,d,e,f]).
%member(*,[a,b,c,d,e,f]).
%member(X,[a,b,c,d,e,f]). to list all the members