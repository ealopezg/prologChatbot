
pelicula("El Atelier","DRAMA",6.8).
pelicula("Gnomos Al Ataque","INFANTIL",5.5).
pelicula("Inmersión","DRAMA",5.4).
pelicula("Isla de Perros","ANIMACION",7.6).
pelicula("La Isla De Los Pingüinos","DRAMA",7.8).
pelicula("La Profecía","TERROR",7.6).
pelicula("Los Extraños: Cacería Nocturna","TERROR",5.6).
pelicula("Los Inquilinos","TERROR",4.6).
pelicula("Avengers: Infinity war","ACCION",8.9).
pelicula("Rampage: Devastación","ACCION",5.3).
pelicula("Sexy Por Accidente","COMEDIA",4.5).
pelicula("Sherlock Gnomes","INFANTIL",4.9).
pelicula("Un Lugar en Silencio","TERROR",6.9).
pelicula("Yo Soy Simón","ROMANCE",8.1).


mensaje(formal,0,0,"Buenos dias, en que lo puedo ayudar?").
mensaje(formal,0,0,"Hola, que agradable día, en qué lo puedo ayudar?").
mensaje(formal,0,1,"Buenas tardes, ¿Qué necesita?").
mensaje(formal,0,1,"Buenas tardes, ¿Qué puedo hacer por usted?").
mensaje(formal,0,2,"Buenas noches, ¿Qué necesita?").
mensaje(formal,0,2,"Que linda que está la luna....¿En qué lo puedo ayudar?").


dia("LUNES").
dia("MARTES").
dia("JUEVES").
dia("VIERNES").
dia("SABADO").
dia("DOMINGO").

genero(G):-
	pelicula(_,G,_).

keyword("RECOMIENDA",1,0).
keyword("RECOMENDAR",1,0).
keyword(G,1,1):-
genero(G).
keyword("SI",1,2).
keyword("NO",1,2).

is_In(X,[X|_]).
is_In(X,[_|L]):-
	is_In(X,L).

chatbot([Personalidad,Evaluaciones]):-
	mensaje(Personalidad,_,_,_),
	is_list(Evaluaciones).



my_random(Seed,Limite,N):-
	set_random(seed(Seed)),
	N is random(Limite).

randomChoose(L,Seed,Elemento):-
	length(L,Limite),
	my_random(Seed,Limite,Index),
	nth0(Index,L,Elemento).


fecha(Y,Ms,D,H,M,S):-
	get_time(T),
	T1 is T-14400, 
	stamp_date_time(T1, date(Y,Ms,D, H, M, Sf, _, _,_), 'UTC'),
	S is truncate(Sf).



list_string(L,S):-
	atomic_list_concat(L," ", A),
	atom_string(A,S).


logToStr([Mensajes,_],StrRep):-
	atomic_list_concat(Mensajes,"\n", A),
	atom_string(A,StrRep).



hora(H,M):-
	fecha(_,_,_,H,M,_).

fechaString(F):-
	get_time(T),
	format_time(string(F1),'%d-%m-%y %H:%M:%S', T),
	list_string(["[",F1,"]"],F).

lista_de_peliculas_genero(GENERO,L):-
	findall([P,PTJE],pelicula(P,GENERO,PTJE),L).


writeStr(Msg,[Mensajes|Info],OutputLog):-
	append(Mensajes,[Msg],Mensajes1),
	append([Mensajes1],Info,OutputLog).

writeMessage(Msg,From,InputLog,OutputLog):-
	fechaString(Fecha),
	string_concat(From,":",From2),
	list_string([Fecha,From2,Msg],Str),
	writeStr(Str,InputLog,OutputLog).

searchKeyword(Msg,Keyword,Forma,Respuesta):-
	string_upper(Msg,MsgUpper),
	split_string(MsgUpper," ","",L),
	is_In(Keyword,L),
	keyword(Keyword,Forma,Respuesta).


maxP([A,P1],[_,P2],[A,P1]):-P1>P2.
maxP([_,P1],[A,P2],[A,P2]):-P1<P2.


mejorPelicula([P],P).
mejorPelicula([P|L],Pf):-
	mejorPelicula(L,P1),
	maxP(P,P1,Pf).


mensaje_Bienvenida(Chatbot,Seed,Msg):-
	append([],Chatbot,[Perso,_]),
	hora(Hor,_),
	Hor>=6,
	Hor<12,
	findall(Str,mensaje(Perso,0,0,Str),L),
	randomChoose(L,Seed,Msg),!.

mensaje_Bienvenida(Chatbot,Seed,Msg):-
	append([],Chatbot,[Perso,_]),
	hora(Hor,_),
	Hor>=12,
	Hor<20,
	findall(Str,mensaje(Perso,0,1,Str),L),
	randomChoose(L,Seed,Msg),!.

mensaje_Bienvenida(Chatbot,Seed,Msg):-
	append([],Chatbot,[Perso,_]),
	hora(Hor,_),
	(Hor<6;Hor>=20),
	findall(Str,mensaje(Perso,0,2,Str),L),
	write(L),
	randomChoose(L,Seed,Msg),!.




writeInfo(Msg,[M,[[Nombre,_,Pelicula,Horario]|L]],[M,[[Nombre,Keyword,Pelicula,Horario]|L]]):-
	searchKeyword(Msg,Keyword,_,_),
	genero(Keyword).








log([Mensajes,Info]):-
	is_list(Mensajes),
	is_list(Info).

getLastID([Mensajes,_],ID):-
	reverse(Mensajes,MensajesR),
	getLastID1(MensajesR,ID).


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


msgFrom(Msg,Usr,Str):-
	split_string(Str," ","",[_,_,_,_,N|MsgL]),
	split_string(N,":","",[Usr,_]),
	atom(Msg),
	split_string(Msg," ","",MsgL).


lastMsgFrom(Usr,[[H|_],_],Msg):-
	msgFrom(Msg,Usr,H).
	lastMsgFrom(Usuario,[[_|T],_],Msg):-
	lastMsgFrom(Usuario,[T,_],Msg).


genNewUser(["","","",""]).


sendMessage(Msg,Chatbot,InputLog,Seed,OutputLog):-







beginDialog(Chatbot,InputLog,Seed,OutputLog):-
	append([],InputLog,[Mensajes,Info]),
	genNewUser(Usr),
	append(Info,[Usr],NewInfo),
	append([],[Mensajes,NewInfo],InputLog2),
	fechaString(F),
	getLastID(InputLog2,LastID),
	genNewID(LastID,ID),
	atom_number(IDs,ID),
	string_concat("ID:",IDs,IDss),
	list_string(["BeginDialog",F,IDss],S),
	writeStr(S,InputLog2,Log1),
	mensaje_Bienvenida(Chatbot,Seed,Msg),
	writeMessage(Msg,"Chatbot",Log1,OutputLog).


recomendarPelicula(GENERO,P):-
lista_de_peliculas_genero(GENERO,L),
mejorPelicula(L,P),!.

%possibleResponses(Msg,Chatbot,InputLog,Responses):-




