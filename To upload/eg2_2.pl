 house_elf(dobby).
 witch(hermione).
 witch('McGonagall').
 witch(rita_skeeter).
 magic(X):- house_elf(X).
 magic(X):- witch(X). 
 magic(X):- wizard(X).

/*
"magic(house_elf).
wizard(harry).
magic(wizard).
magic(’McGonagall’).
magic(Hermione). "
*/