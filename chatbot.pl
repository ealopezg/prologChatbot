

pelicula("Avengers: Infinity war","ACCION",8.9).
pelicula("El Atelier","DRAMA",6.8).
pelicula("Gnomos Al Ataque","INFANTIL",5.5).
pelicula("Inmersión","DRAMA",5.4).
pelicula("Isla de Perros","ANIMACION",7.6).
pelicula("La Isla De Los Pingüinos","DRAMA",7.8).
pelicula("La Profecía","TERROR",7.6).
pelicula("Los Extraños: Cacería Nocturna","TERROR",5.6).
pelicula("Los Inquilinos","TERROR",4.6).
pelicula("Rampage: Devastación","ACCION",5.3).
pelicula("Sexy Por Accidente","COMEDIA",4.5).
pelicula("Sherlock Gnomes","INFANTIL",4.9).
pelicula("Un Lugar en Silencio","TERROR",6.9).
pelicula("Yo Soy Simón","ROMANCE",8.1).



fecha(Y,Ms,D,H,M,S):-
get_time(T),
T1 is T-14400, 
stamp_date_time(T1, date(Y,Ms,D, H, M, Sf, _, _,_), 'UTC'),
S is truncate(Sf).



list_string(L,S):-
atomic_list_concat(L," ", A),
atom_string(A,S).



hora(H,M):-
fecha(_,_,_,H,M,_).

fechaString(F):-
get_time(T),
format_time(string(F1),'%d-%m-%y %H:%M', T),
list_string(["[",F1,"]"],F).

lista_de_peliculas_genero(GENERO,L):-
findall([P,PTJE],pelicula(P,GENERO,PTJE),L).


writeMessage(Msg,[Mensajes|Info],OutputLog):-
append(Mensajes,[Msg],Mensajes1),
append([Mensajes1],Info,OutputLog).





maxPelicula(X,_,X).
maxPelicula([A,P1],[_,P2],[A,P1]):-P1>P2.
maxPelicula([_,P1],[A,P2],[A,P2]):-P2>P1.

mejorPelicula([A],A).
mejorPelicula([Pelicula|L],R):-
maxPelicula(Pelicula,R1,R),
mejorPelicula(L,R1).

%mensaje_Bienvenida(Chatbot,Seed,M):-

log([Mensajes,Info]):-
is_list(Mensajes),
is_list(Info).

getLastID([Mensajes,_],ID):-
reverse(Mensajes,MensajesR),getLastID1(MensajesR,ID).


getLastID1([],0).
getLastID1([H|_],ID):-
split_string(H," ","",[_,_,_,_,_,S]),
split_string(S,":","",["ID",IDs]),
atom_number(IDs,ID),
!.

getLastID1([_|T],ID):-
getLastID1(T,ID).


genNewID(ID,NewID):-
NewID is ID+1.





beginDialog(Chatbot,InputLog,Seed,OutputLog):-
append([],InputLog,[Mensajes,Info]),
fechaString(F),
getLastID(InputLog,LastID),
genNewID(LastID,ID),
atom_number(IDs,ID),
string_concat("ID:",IDs,IDss),
list_string(["BeginDialog",F,IDss],S),
append(Mensajes,[S],Mensajes1),
append([],[Mensajes1,Info],OutputLog).






recomendarPelicula(GENERO,P):-
lista_de_peliculas_genero(GENERO,L),
mejorPelicula(L,P).





