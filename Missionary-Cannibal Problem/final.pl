solve :-
   path([3,3,left],[0,0,right],[[3,3,left]],MoveList),
   nl,nl,printMoveList(MoveList).
printMoveList([]) :- nl, nl.
printMoveList([[A,B,Desc]|T]) :-
   write(A), write(' --> '), write(B), write('  by  '), write(Desc), nl,
   printMoveList(T).

path([A,B,C],[A,B,C],_,[]).

path([A,B,C],[D,E,F],Visited,Moves) :-
   move([A,B,C],[I,J,K],Description),
   write('Try move '), write([I,J,K]), 
      write(' '), write(Description), nl,
      safe([I,J,K]),
      not(member([I,J,K],Visited)),
   path([I,J,K],[D,E,F],[[I,J,K]|Visited],MoreMoves),
   Moves = [ [[A,B,C],[I,J,K],Description] | MoreMoves ].
 
move([A,B,left],[C,B,right],'One missionary rows across') :-
   A > 0, C is A - 1.
move([A,B,left],[C,B,right],'Two missionaries row across') :-
   A > 1, C is A - 2.
move([A,B,left],[C,D,right],'One missionary and one cannibal row across') :-
   A > 0, B > 0, C is A - 1, D is B - 1.
move([A,B,left],[A,D,right],'One cannibal rows across') :-
   B > 0, D is B - 1.
move([A,B,left],[A,D,right],'Two cannibals row across') :-
   B > 1, D is B - 2.

move([A,B,right],[C,B,left],'One missionary rows back') :-
   A < 3, C is A + 1.
move([A,B,right],[C,B,left],'Two missionaries row back') :-
   A < 2, C is A + 2.
move([A,B,w],[C,D,left],'One missionary and one cannibal row back') :-
   A < 3, B < 3, C is A + 1, D is B + 1.
move([A,B,right],[A,D,left],'One cannibal rows back') :-
   B < 3, D is B + 1.
move([A,B,right],[A,D,left],'Two cannibals row back') :-
   B < 2, D is B + 2.


safe([A,B,_]) :-
   (A =< B ; B = 0), 
   C is 3-A, D is 3-B,
   (C =< D; D = 0).   