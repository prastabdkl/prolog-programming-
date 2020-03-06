list_member(X,[X|Tail]).
list_member(X,[Head|Tail]) :- list_member(X,Tail).

%listing. gives codes
%list_member(a,[a,b,c,d,e,f]).
%list_member(*,[a,b,c,d,e,f]).
%list_member(X,[a,b,c,d,e,f]). to list all the members
%member(a,[a,b,c,d,e,f]).
%member(*,[a,b,c,d,e,f]).
%member(X,[a,b,c,d,e,f]). to list all the members

%del
%member2(X,List) :- del(X,List,_).