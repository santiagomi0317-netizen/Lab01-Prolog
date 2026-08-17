miembro(X, [X|_]).            
miembro(X, [_|T]) :- miembro(X, T).

longitud([],0).
longitud([_|T],Long) :-
    longitud(T,L1),
    Long is L1+1. 
    
concatenar([], L, L).
concatenar([H|T1], L2, [H|T3]) :- concatenar(T1, L2, T3).

fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(X,Total) :- X>1, X1 is X-1, X2 is X-2,
    fibonacci(X1,Total1), fibonacci(X2,Total2),
    Total is Total1+Total2.

listafibo(0, []).
listafibo(N, Lista) :- N>0, N1 is N-1, 
    listafibo(N1, Resto), fibonacci(N1, F), append(Resto, [F], Lista).

reverso([],[]).
reverso([H|T], R) :- reverso(T,RT), append(RT, [H], R).

palindroma(X) :- reverso(X, X).

                    








                        
