sum([],0).
sum([Head|Tail],Sum) :- 
	sum(Tail,SumofTail), Sum is SumofTail+Head.
