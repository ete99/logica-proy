:- dynamic my/2.
my(a,b).
my(a,c).
foo:-
   %myvar(Houses),
   main(Houses),write(Houses), copyArray(Houses, H),!.
main(Houses):- 
         open('houses.txt',read,Str), 
         read_houses(Str,Houses1), 
         delete(Houses1,end_of_file, Houses),
         close(Str), !. 
    
   read_houses(Stream,[]):-
         at_end_of_stream(Stream). 
    
   read_houses(Stream,[X|L]):-
         \+  at_end_of_stream(Stream), 
         read(Stream,X),
         read_houses(Stream,L).

copyArray([],[]).
copyArray([H|T],[H2|T2]):- copyArray(T,T2), write(H), (atom(H); compound_string(H)), ex(H,c),
 string_lower(H,H2) .
ex(X,Y):- assert(my(X,Y)), assert(my(Y,X)).