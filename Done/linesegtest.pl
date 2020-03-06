%programming_with_unification

vertical(seg(point(X,_),point(X,_))).
horizontal(seg(point(_,Y),point(_,Y))).
oblique(seg(point(X1,Y1),point(X2,Y2))):-X1\==X2,Y1\==Y2.

%queries
%-----------------------------------
% vertical(seg(point(1,1),point(1,2))). 
% Ans:yes
% vertical(seg(point(1,1),point(2,Y))).
% Ans:No
% vertical(seg(point(1,1),P)).
% Ans:point(2,Y)
% horizontal(seg(point(1,1),point(2,Y))).
% Ans: Y=1
% oblique(seg(point(1,3),point(2,Y2))).
% vertical(S),horizontal(S).
% Ans S= seg(point(X,Y),point(X,Y))