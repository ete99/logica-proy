fac(0,1).
fac(N,F):-N>0,N1 is N-1,fac(N1,F1),F is N*F1.
lista_factorial([],[]).
lista_factorial([H|T],[H2|T2]) :- fac(H, H2), lista_factorial(T, T2).
ite(0,[]).
ite(N, [H|T]):- N>0, N1 is N-1, ite(N1, T),fac(N,H).
iter(_, _, []):-!.
iter(Inicio, Fin, [H|T]):- Fin>Inicio, N1 is Inicio+1, iter(N1,Fin, T), fac(Inicio,H).
