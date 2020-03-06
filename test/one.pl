list([],[]).
list([X|T],[X,X|T1]) :- list(T,T1).