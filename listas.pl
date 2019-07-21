a([],[]).
a([H|T],[HR|HT]):- write(H), fac(H, HR), a(T, HT);

fac(0, 1).
fac(1, 1).
fac(F, R):- write(F),F > 0, N is F-1, fac(N, FR), R is FR*F.

fib(0,[1]).
fib(1,[1,1]).
fib(X,[H|T]):- N1 is X-1, fib(N1,F1), N2 is X-2, fib(N2,F2), H is F1+F2.