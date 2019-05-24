 main:- 
         open('houses.txt',read,Str), 
         read_houses(Str,Houses), 
         close(Str), copyArray(Houses, X),
         convo(X). 
    
convo([]):-!.
convo([H|T]):- write(H), convo(T), write('%n').

ca([],[]).
ca([H|T],[H2|T2]):- string_lower(H,H2), copyArray(T,T2).

copyArray([],[]).
copyArray([H|T],[H2|T2]):-write(H), atom_string(X,H), atom_length(X,Len), write(Len),
 agre(X, H2), copyArray(T,T2).

 agre('', H).
 agre(A, B):- write(X).



read_houses(Stream,[]):- at_end_of_stream(Stream),!.

read_houses(Stream,[X|L]):-
        \+  at_end_of_stream(Stream), 
         readWord(Stream,X),%  write(X),
         read_houses(Stream,L).

readWord(InStream,W):- 
		get_code(InStream,Char), 
		checkCharAndReadRest(Char,Chars,InStream), 
		atom_codes(W,Chars). 
    
    %  char_code('.',X), write(X)
   checkCharAndReadRest(10,[],_):-!. 
   checkCharAndReadRest(46,[],_):-!. 
    
   checkCharAndReadRest(32,[],_):-!. 
   checkCharAndReadRest(-1,[],_):-  write("si3"),!. 
    
   checkCharAndReadRest(end_of_file,[],_):-  !. 
    
   checkCharAndReadRest(Char,[Char|Chars],InStream):- 
         get_code(InStream,NextChar), 
         checkCharAndReadRest(NextChar,Chars,InStream).
