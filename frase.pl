parte1("Hola, ").
parte1("Buenas, ").
parte1("").


parte2(coloquial,"en que te puedo ayudar?, ").
parte2(informal,"Estoy aqui para servirle,¿Que necesita?, ").

parte3("espero ser de gran ayuda ").
parte3("me gustaria ayudarte ").
parte3("quiero servir de algo :(").



frase(F,Personalidad):-
parte1(A),
parte2(Personalidad,B),
parte3(C),
unir3(A,B,C,F).


unir3(F1,F2,F3,S):-
string_concat(F1,F2,S1),
string_concat(S1,F3,S).

listaFrases(L):-
findall(F,(parte1(A),parte2(B),parte3(C),unir3(A,B,C,F)),L).
