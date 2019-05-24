casaPareja(X,Y). 
casaPareja(X,a). 
copyArray([],[]).
copyArray([H|T],[H2|T2]):- H2 is H, copyArray(T,T2).
readFile:-
		open('houses.txt',read,Stream), 
		get_char(Stream,Char1),
		process_the_stream(Char1,Stream),
		close(Stream),!.

process_the_stream(end_of_file,_):- !.
process_the_stream('.',Stream):- 
		get_char(Stream, Char2),
		process_the_stream(Char2, Stream).

process_the_stream(' ',Stream):- 
		get_char(Stream, Char2),
		process_the_stream(Char2, Stream).

process_the_stream(Char, Stream) :-
		write(Char),
		get_char(Stream, Char2),
		process_the_stream(Char2, Stream).

