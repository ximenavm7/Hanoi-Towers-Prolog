% Hanoi Towers puzzle using Prolog
move(1,X,Y,_) :-
   write('Move top disk from tower '), write(X), write(' to tower '), write(Y), nl.
move(N,Begin,End,Temp) :-
   N>1,
   M is N-1,
   move(M,Begin,Temp,End),
   move(1,Begin,End,_),
   move(M,Temp,End,Begin).
