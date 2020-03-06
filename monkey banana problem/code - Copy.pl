%/*
%initial state:
%	monkey is at door,
%	key is in the middle of room,
%	banana is at window loked in a box,
%	Monkey does not have the banana. 

%prolog structure: structName(val1, val2, ... )

%canget(state(atdoor,locked,hasnot,hasnot)).	
%canget(state(S1, S2, S3, S4)).

%S1-monkey location-atdoor / onfloor / atwindow / middle
%S2-box is locked or not: locked/unlocked
%S3-monkey has the key or not has,hasnot
%S4-monkey has the banana or not-has,hasnot

%legal actions
move(state(atwindow,unlocked,has,hasnot),		% before move
	grasp,									% grasp banana 
	state(atwindow,unlocked,has,has)).			% after move

move(state(atwindow,locked,has,H),
	unlock,									% climb box 
	state(atwindow,unlocked,has,H)).

move(state(middle,locked,hasnot,H),
	get_key,							% push box form P1 to P2
	state(middle,locked,has,H)).

move(state(P1,locked,_,_),
	walk(P1,P2),							% walk form P1 to P2
	state(P2,locked,_,_)).
%canget(State): monkey can get banana in state
canget(state(_,_,_,has)).					% Monkey already has it, goal state
canget(State1):-							%do some work to get it
	move(State1,Move,State2),				%do something
	canget(State2).							%Get it now.

