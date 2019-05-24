fac(0,1).
fac(N,F):-N>0,N1 is N-1,fac(N1,F1),F is N*F1.
lista_factorial([],[]).
lista_factorial([H|T],[H2|T2]) :- fac(H, H2), lista_factorial(T, T2).