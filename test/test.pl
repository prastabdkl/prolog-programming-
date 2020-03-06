happy(vincent).
li2mu(butch).
playsAirGuitar(vincent):- li2mu(vincent),happy(vincent).
playsAirGuitar(butch) :- happy(butch).
playsAirGuitar(butch) :- li2mu(butch).

