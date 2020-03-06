%/*
%initial state:
%	monkey is at door,
%	monkey is on the floor,
%	box is at window,
%	Monkey does not have the banana. 

%prolog structure: structName(val1, val2, ... )

%state(MonkeyHorizontal, MonkeyVertical, BoxPosition, HasBanana)

%MonkeyHorizontal-atdoor / onfloor / atwindow / middle
%MonkeyVertical-onbox/onfloor
%BoxPosition-atdoor / onfloor / atwindow / middle
%HasBanana-has,hasnot


%legal actions
move(state(middle,onbox,middle,hasnot),		% before move
	grasp,									% grasp banana 
	state(middle,onbox,middle,has)).			% after move

move(state(P,onfloor,P,H),
	climb,									% climb box 
	state(P,onbox,P,H)).

move(state(P1,onfloor,P1,H),
	push(P1,P2),							% push box form P1 to P2
	state(P2,onfloor,P2,H)).

move(state(P1,onfloor,B,H),
	walk(P1,P2),							% walk form P1 to P2
	state(P2,onfloor,B,H)).
%canget(State): monkey can get banana in state
canget(state(_,_,_,has)).					% Monkey already has it, goal state
canget(State1):-							%do some work to get it
	move(State1,Move,State2),				%do something
	canget(State2).							%Get it now.

