persona(p, edad(21), asignaturas(40), carrera(iin), gusto(a), gusto(b), gusto(c),gusto(d), condicion(a), mov(si), comida(a), comida(b), comida(c)).
persona(p2, edad(21), asignaturas(40), carrera(iin), gusto(a), gusto(b), gusto(c),gusto(d), condicion(a), mov(si), comida(a), comida(b), comida(c)).
id_nombre_carrera_movilidad(1, nombre).
id_nombre_carrera_movilidad(2, nombre2).
edad(1, 21).
edad(2, 21).
asig(1, 40).
asig(2, 40).
carrera(1,iin).
carrera(2,iin).
mov(1,false).
mov(2,true).
gusto(1,a).
gusto(1,b).
gusto(1,c).
gusto(1,d).
gusto(2,a).
gusto(2,b).
gusto(2,c).
gusto(2,d).
%persona(p,gustos(a,b,c,e)).
coin(X,Y):-persona(X,gustos(A,B,C,D)), persona(Y,gustos(A,B,C,_)).
c(X,Y):- p(X,A), p(X,B), A \= B, p(Y,A), p(Y,B), Y \= X.
icarrera(X,Y):- carrera(X,Carr), carrera(Y,Carr).	% p(X,A), p(X,B), A \= B, p(Y,A), p(Y,B), Y \= X.
imov(X,Y):- mov(X,Mov1), mov(Y,Mov2), Mov1 \= Mov2.
igusto(X,Y):- gusto(X,A), gusto(X,B), gusto(X,C), gusto(X,D), eq2(A,B,C,D) , gusto(Y,A), gusto(Y,B),gusto(Y,C), gusto(Y,D), Y \= X.
i(X,Y):- edad(X, E1), E1 >=21, asig(X, A1), A1>=40, imov(X,Y), X \= Y, icarrera(X,Y), igusto(X,Y), edad(Y, E2), E2 >=21, asig(Y, A2), A2>=40,!.
eq2(A,B,C,D):- A \= B, A \= C, A \= D, B \= C, B\=D, C \= D.
