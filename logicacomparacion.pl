igual_condicion(X,Y):- condLaboral(X,C), condLaboral(Y,C).
dif_sexo(X,Y):- sexo(X,S1), sexo(Y,S2), S1 \= S2.
igual_carrera(X,Y):- carrera(X,Carr), carrera(Y,Carr).
dif_movilidad(X,Y):- mov(X,Mov1), mov(Y,Mov2), Mov1 \= Mov2.
iguales_areas(X,Y):- 
		areas(X,L1),
		areas(Y,L2),
		intersection(L1,L2,LCoin),
		length(LCoin,NCoin),
		NCoin>=3.
iguales_comidas(X,Y):- 
		comidas(X,L1),
		comidas(Y,L2),
		intersection(L1,L2,LCoin),
		length(LCoin,NCoin),
		NCoin>=4.
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
		iguales_comidas(X,Y),  % chequea si tienen al menos 3 gustos de comidas iguales
		iguales_areas(X,Y),  % chequea si tienen al menos 4 gustos de subareas iguales
		!.