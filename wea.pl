
member(X,[X|_]).
member(X,[_|As]):-
member(X,As).


interseccion([],_,[]).
interseccion([A|L1],L2,R):-
interseccion(L1,L2,R2),
member(A,L2),
append(R2,[A],R).


maximo(X,Y,X):-
X>=Y.

maximo(X,Y,Y):-
Y>=X.

rnuevo(A,L,R):-
member(A,L),
append()


contar([_|L],R):-
contar(L,R1),
R is R1+1.

exponencial(1,2.71828):-!.
exponencial(X,R):-
X1 is X-1,
exponencial(X1,R2),
R is R2*2.71828.

suma([A],A).
suma([L|Ls],A):-
suma(Ls,Sum),
A is Sum+L.

factorial(0,1):-!.
factorial(N,R):-
N1 is N-1,
factorial(N1,R1),
R is R1*N.