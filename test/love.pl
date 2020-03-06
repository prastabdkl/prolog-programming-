women(mia).
women(jody).
woman(yolanda).

loves(vincent,mia).
loves(marsellus,vincent).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).
love(X,Y) :- loves(X,Y),loves(Y,X).
jeolous(X,Y) :- loves(Z,X),loves(Y,Z),X\==Y.