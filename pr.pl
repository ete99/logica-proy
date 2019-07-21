edad(bruno diaz,26).
edad(ikergarcia,27).
edad(1, 21).
edad(2, 21).
materiasAprobadas(1, 40).
materiasAprobadas(2, 40).
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
comida(1, arroz).
comida(1, pollo).
comida(1, fideo).
comida(2, arroz).
comida(2, pollo).
comida(2, fideo).
sexo(1,femenino).
sexo(2,masculino).

igual_condicion(X,Y):- condLaboral(X,C), condLaboral(Y,C).
dif_sexo(X,Y):- sexo(X,S1), sexo(Y,S2), S1 \= S2.
igual_carrera(X,Y):- carrera(X,Carr), carrera(Y,Carr).
dif_movilidad(X,Y):- mov(X,Mov1), mov(Y,Mov2), Mov1 \= Mov2.
iguales_areas(X,Y):- 
		area(X,A), area(X,B), area(X,C), area(X,D),
		diferentes(A,B,C,D),
		area(Y,A), area(Y,B), area(Y,C), area(Y,D).
iguales_comidas(X,Y):- 
		comida(X,A), comida(X,B), comida(X,C),
		diferentes(A,B,C), 
		comida(Y,A), comida(Y,B), comida(Y,C).
tiempo(X,Y):- time(buscar_pareja(X,Y)).
buscar_pareja(X,Y):-
		edad(X, E1), E1 >=21,  % Elige una persona y chequea si tiene 21 anhos o mas
		materiasAprobadas(X, A1), A1>=40,  % chequea si tiene mas de 40 materiasAprobadasnaturas aprobadas
		igual_carrera(X,Y),  % elige alguna Y que tiene igual carrera que X
		X \= Y,  % chequea si Y y X son diferentes
		dif_sexo(X,Y),
		igual_condicion(X,Y),
		dif_movilidad(X,Y),  % chequea si Y que tiene movilidad diferente a X
		edad(Y, E2), E2 >=21,  % chequea si la edad de Y es aceptable
		materiasAprobadas(Y, A2), A2>=40,  % chequea si la cantidad de materiasAprobadasnaturas aprobadas es aceptable
		iguales_comidas(X,Y),  % chequea si tienen al menos 3 gustos de comida iguales
		iguales_areas(X,Y),  % chequea si tienen al menos 4 gustos de subareas iguales
		!.
diferentes(A,B,C,D):-
		A \= B, A \= C, A \= D,
		B \= C, B\=D,
		C \= D.
diferentes(A,B,C):- A \= B, A \= C, B \= C.
