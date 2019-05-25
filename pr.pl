
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

icarrera(X,Y):- carrera(X,Carr), carrera(Y,Carr).
imov(X,Y):- mov(X,Mov1), mov(Y,Mov2), Mov1 \= Mov2.
igusto(X,Y):- gusto(X,A), gusto(X,B), gusto(X,C), gusto(X,D), eq2(A,B,C,D) , gusto(Y,A), gusto(Y,B),gusto(Y,C), gusto(Y,D), Y \= X.
i(X,Y):- edad(X, E1), E1 >=21, asig(X, A1), A1>=40, imov(X,Y), X \= Y, icarrera(X,Y), igusto(X,Y), edad(Y, E2), E2 >=21, asig(Y, A2), A2>=40,!.
eq2(A,B,C,D):- A \= B, A \= C, A \= D, B \= C, B\=D, C \= D.
