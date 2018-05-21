pelicula("Avengers: Infinity war","ACCION",8.9).
pelicula("Deadpool 2","ACCION",8.2).
pelicula("Desobediencia","DRAMA",6.7).
pelicula("Gnomos Al Ataque","INFANTIL",5.5).
pelicula("Isla de Perros","ANIMACION",7.6).
pelicula("La Isla De Los Pinguinos","DRAMA",7.8).
pelicula("La Profecia","TERROR",7.6).
pelicula("Los Extraños Cacería Nocturna","TERROR",5.6).
pelicula("Rampage: Devastacion","ACCION",5.3).
pelicula("Sexy Por Accidente","COMEDIA",4.5).
pelicula("Sherlock Gnomes","INFANTIL",4.9).
pelicula("Tully","DRAMA",7.3).
pelicula("Yo Soy Simon","ROMANCE",8.1).

horarioP("Avengers: Infinity War",[["11:00","14:40","18:00","21:30"],["14:40","18:00","18:30","21:30"],["12:00","15:40","17:00","19:00"],["11:00","14:40","18:00","21:30"],["14:40","18:00","18:30","21:30"],["12:00","15:40","17:00","19:00"],["11:00","14:40","18:00","21:30"]]).
horarioP("Deadpool 2",[["12:10","15:00","17:50","20:40"],["14:10","17:00","19:50","22:40"],["12:10","15:00","17:50","20:40"],["12:10","15:00","17:50","20:40"],["14:10","17:00","19:50","22:40"],["12:10","15:00","17:50","20:40"],["12:10","15:00","17:50","20:40"]]).
horarioP("Desobediencia",[["12:50","15:30","18:20","21:10"],["12:40","15:30","18:20","21:10"],["12:40","15:30","18:20","21:10"],["12:50","15:30","18:20","21:10"],["12:40","15:30","18:20","21:10"],["12:40","15:30","18:20","21:10"],["12:50","15:30","18:20","21:10"]]).
horarioP("Gnomos Al Ataque",[["11:50","14:20"],["14:20","16:30"],["14:20","16:30"],["11:50","14:20"],["14:20","16:30"],["14:20","16:30"],["11:50","14:20"]]).
horarioP("Isla de Perros",[["11:40","14:15","16:40"],["14:15","16:40","21:50"],["14:15","16:40","21:50"],["11:40","14:15","16:40"],["14:15","16:40","21:50"],["14:15","16:40","21:50"],["11:40","14:15","16:40"]]).
horarioP("La Isla De Los Pinguinos",[["14:00"],["14:00"],["14:00"],["14:00"],["14:00"],["14:00"],["14:00"]]).
horarioP("La Profecia",[["15:00"],["21:00"],["15:00"],["15:00"],["21:00"],["15:00"],["15:00"]]).
horarioP("Los Extraños: Cacería Nocturna",[["12:30","14:50","17:10"],["12:30","14:50","17:10"],["12:30","14:50","17:10"],["12:30","14:50","17:10"],["12:30","14:50","17:10"],["12:30","14:50","17:10"],["12:30","14:50","17:10"]]).
horarioP("Rampage: Devastacion",[["11:20","14:00"],["14:00","16:40"],["14:00","16:40"],["11:20","14:00"],["14:00","16:40"],["14:00","16:40"],["11:20","14:00"]]).
horarioP("Sexy Por Accidente",[["11:50","14:20","16:50","19:30"],["14:20","16:50","19:30","22:10"],["14:20","16:50","19:30","22:10"],["11:50","14:20","16:50","19:30"],["14:20","16:50","19:30","22:10"],["14:20","16:50","19:30","22:10"],["11:50","14:20","16:50","19:30"]]).
horarioP("Sherlock Gnomes",[["10:30","12:45"],["13:50","16:10"],["12:20","14:40"],["10:30","12:45"],["13:50","16:10"],["12:20","14:40"],["10:30","12:45"]]).
horarioP("Tully",[["13:10","15:50","18:30","21:00"],["13:10","15:50","18:30","21:00"],["13:10","15:50","18:30","21:00"],["13:10","15:50","18:30","21:00"],["13:10","15:50","18:30","21:00"],["13:10","15:50","18:30","21:00"],["13:10","15:50","18:30","21:00"]]).
horarioP("Yo Soy Simon",[["17:20","19:10"],["12:50","19:10"],["12:50","19:10"],["17:20","19:10"],["12:50","19:10"],["12:50","19:10"],["17:20","19:10"]]).





mensaje(formal,0,0,"Hola, en qué lo puedo ayudar?").
mensaje(formal,0,0,"Buenos dias, en que lo puedo ayudar?").
mensaje(formal,0,0,"Hola, que agradable día, en qué lo puedo ayudar?").
mensaje(formal,0,1,"Buenas tardes, ¿Qué necesita?").
mensaje(formal,0,1,"Buenas tardes, ¿Qué puedo hacer por usted?").
mensaje(formal,0,2,"Buenas noches, ¿Qué necesita?").
mensaje(formal,0,2,"Que linda que está la luna....¿En qué lo puedo ayudar?").



mensaje(formal,1,0,"Digame algun genero que le guste").
mensaje(formal,1,1,"Le recomiendo la película: {} , tiene una puntuación de {},Hasta Luego !!!").

mensaje(formal,2,0,"Para que día").
mensaje(formal,2,1,"¿Qué pelicula desea ver?").
mensaje(formal,2,2,"Para el día {}, tenemos los siguientes horarios {},Hasta luego !!!").






mensaje(formal,3,0,"¿Para qué película?").
mensaje(formal,3,1,"Qué día tiene pensado ir a verla?").
mensaje(formal,3,2,"Bueno, para el dia {} tenemos los siguientes horarios {},¿Que horario escoge?").
mensaje(formal,3,3,"Ok, su entrada está reservada para el dia {} a las {},Adios...que tenga un lindo día !!!").


dia("LUNES").
dia("MARTES").
dia("JUEVES").
dia("VIERNES").
dia("SABADO").
dia("DOMINGO").

genero(G):-
	pelicula(_,G,_).

keyword("RECOMIENDA",1,0).
keyword("RECOMIENDAME",1,0).
keyword("RECOMENDAR",1,0).
keyword(G,1,1):-
genero(G).
keyword("SI",1,2).
keyword("NO",1,2).
keyword(KW,1,3):-
dia(KW).

keyword(KW,2,2):-
dia(KW).

keyword(KW,1,4):-
horario(KW).

keyword("HORARIOS",2,0).
keyword(KW,2,1):-
dia(KW).
keyword(KW,2,2):-
	pelicula(Pelicula,_,_),
	string_upper(Pelicula,KW),!.



keyword("COMPRAR",3,0).
keyword(KW,3,1):-
	pelicula(Pelicula,_,_),
	string_upper(Pelicula,KW),!.
keyword(KW,3,2):-
	dia(KW).

keyword(KW,3,3):-
horario(KW).














/*
substring()

*/
substring2(X,S) :-
  append(_,T,S) ,
  append(X,_,T) ,
  X \= []
  .

substring1(Str1,Str2):-
	name(Str1,X),
	name(Str2,S),
	substring2(X,S).




/*
seParecen/2
seParecen(+RespuestaGenerica : string,+RespuestaChatbot : string)

Verdadero si los RespuestaChatbot proviene de RespuestaGenerica.
@param RespuestaGenerica -> mensaje(personalidad,_,_,RespuestaGenerica)
@param RespuestaChatbot Respuesta generada por chatbot
*/
seParecen(Respuesta,Str):-
	split_string(Respuesta,"{}","",L),
	seParecen1(L,Str).


/*
seParecen1/2
seParecen(+Lista : list,+RespuestaChatbot : string)

Verdadero si los cada elemento de Lista es substring de RespuestaChatbot
@param Lista -> mensaje(personalidad,_,_,RespuestaGenerica),split_string(RespuestaGenerica,"{}","",Lista)
@param RespuestaChatbot Respuesta generada por chatbot
*/
seParecen1([],_).
seParecen1([""|_],_).
seParecen1([H|L],Str):-
	substring1(H,Str),
	seParecen1(L,Str).
	

/*
checkLastMsg/4
checkLastMsg(+LastMsg : string,+Chatbot : list,+Forma : number,+Respuesta : number)

Verdadero si lastMsg es de la forma Forma y respuesta Respuesta
@param LastMsg String del ultimo mensaje enviado por el chatbot
@param Chatbot 
@param Forma -> numero perteneciente a la forma de conversacion (0,3)
@param Respuesta -> numero perteneciente al numero de respuesta para la forma
*/
checkLastMsg(LastMsg,[Perso|_],Forma,Respuesta):-
	mensaje(Perso,Forma,Respuesta,MensajeCbot),
	seParecen(MensajeCbot,LastMsg).




/*
horario/1
horario(+Horario : string)

Verdadero si Horario es un string de HH:MM donde HH es la hora y MM son los minutos
@param Horario string
*/
horario(X):-
split_string(X,":","",[StrHor,StrMin]),
atom_number(StrHor,Hor),
atom_number(StrMin,Min),
Hor>=0,
Hor=<23,
Min>=0,
Min=<59.


/*
is_In/2
is_In(+Elemento ,+Lista : list)

Verdadero si Elemento existe en Lista

@param Elemento Algun elemento que pueda existir en una lista
@param Lista Lista de elementos
*/
is_In(X,[X|_]).
is_In(X,[_|L]):-
	is_In(X,L).


/*
chatbot/2
chatbot(+Chatbot : list)
Verdadero si es un chatbot, es decir, que existan frases posibles para la personalidad dada

@param Chatbot = [Personalidad,Evaluaciones]
*/
chatbot([Personalidad,Evaluaciones]):-
	mensaje(Personalidad,_,_,_),
	is_list(Evaluaciones).


/*

*/

/*
my_random/3
my_random(+Seed : number,+Limite : number ,-N : number)

Devuelve un numero pseudoaleatorio entre (0,Limite)
@param Seed Semilla
@param Limite Valor maximo que podria tomar N
@param N Numero generado
*/
my_random(Seed,Limite,N):-
	set_random(seed(Seed)),
	N is random(Limite).


/*
randomChoose/3
randomChoose(+Lista : list,+Seed : number,-Elemento )

Escoge un elemento al azar de una lista
@param Lista
@param Seed semilla
@param Elemento Elemento escogido
*/
randomChoose(L,Seed,Elemento):-
	length(L,Limite),
	my_random(Seed,Limite,Index),
	nth0(Index,L,Elemento).

/*
fecha/6
fecha(-Year : number,-Month : number,-Day : number,-Hour : number,-Minute : number,-Second : number)

Devuelve los valores para la fecha actual

@param Year Año actual
@param Month Mes actual
@param Day Dia actual
@param Hour Hora actual
@param Minute Minuto actual
@param Second Segundo actual
*/
fecha(Y,Ms,D,H,M,S):-
	get_time(T),
	T1 is T-14400, 
	stamp_date_time(T1, date(Y,Ms,D, H, M, Sf, _, _,_), 'UTC'),
	S is truncate(Sf).

/*
fechaString/1
fechaString(-Fecha : string)

Devuelve la fecha actual formateada como string

@param Fecha String con la fecha en formato "[ DD-MM-YY HH-mm-SS ]"
*/
fechaString(F):-
	get_time(T),
	format_time(string(F1),'%d-%m-%y %H:%M:%S', T),
	list_string(["[",F1,"]"],F).


/*
list_string/2
list_string(+L : list,-S : string)

Concatena todos los elemento de una lista con un " "
@param L Lista de strings
@param S String generado a partir de L
*/
list_string(L,S):-
	atomic_list_concat(L," ", A),
	atom_string(A,S).

/*
logToStr/2
logToStr(+Log : list, -StrRep : string)

Devuelve el log en string para poder ser visto en pantalla con write()

@param Log Log de la conversacion
@param StrRep string generado a partir del log
*/
logToStr([Mensajes,_],StrRep):-
	atomic_list_concat(Mensajes,"\n", A),
	atom_string(A,StrRep).


/*
hora/2
hora(-Hour : number, -Minute : number)

Devuelve la hora y el minuto actual

@param Hour Hora actual
@param Minute Minuto actual
*/
hora(H,M):-
	fecha(_,_,_,H,M,_).


/*
lista_de_peliculas_genero/2
lista_de_peliculas_genero(+Genero : string,-L :list)

Devuelve una lista de todas las peliculas del genero dado

@param Genero Puede ser ACCION,TERROR,DRAMA,INFANTL...Siempre en mayusculas
@param L lista de Películas con su puntuacion
*/
lista_de_peliculas_genero(GENERO,L):-
	findall([P,PTJE],pelicula(P,GENERO,PTJE),L).

/*
writeStr/3
writeStr(+Msg : string,+Log : list, -OutputLog : list)

Escribe un string en el log

@param Msg String con el mensaje
@param Log Log de la conversacion
@param OutputLog Log de salida
*/
writeStr(Msg,[Mensajes|Info],OutputLog):-
	append(Mensajes,[Msg],Mensajes1),
	append([Mensajes1],Info,OutputLog).


/*
writeMessage/3
writeStr(+Msg : string,+From : string,+InputLog : list, -OutputLog : list)

Escribe un mensaje en el log

@param Msg String con el mensaje
@param From Nombre del remitente del mensaje
@param InputLog Log de la conversacion
@param OutputLog Log de salida
*/
writeMessage(Msg,From,InputLog,OutputLog):-
	fechaString(Fecha),
	string_concat(From,":",From2),
	list_string([Fecha,From2,Msg],Str),
	writeStr(Str,InputLog,OutputLog).



/*

*/
searchKeyword(Msg,Keyword,Forma,Respuesta):-
	string_upper(Msg,MsgUpper),
	split_string(MsgUpper," ","",L),
	is_In(Keyword,L),
	keyword(Keyword,Forma,Respuesta).

searchMovie(Msg,Pelicula,Genero):-
	pelicula(Pelicula,Genero,_),
	string_upper(Pelicula,PeliculaUpper),
	string_upper(Msg,MsgUpper),
	sub_string(MsgUpper,_,_,_,PeliculaUpper),!.


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
	randomChoose(L,Seed,Msg),!.

listaHorariosString([],"").
listaHorariosString([H|T],Str):-
	listaHorariosString(T,Str1),
	string_concat(H,Str1,S1),
	string_concat(" ",S1,Str).


devolver_Horarios(Pelicula,"LUNES",S):-
	horarioP(Pelicula,[L|_]),
	listaHorariosString(L,S).

devolver_Horarios(Pelicula,"MARTES",S):-
	horarioP(Pelicula,[_,L|_]),
	listaHorariosString(L,S).

devolver_Horarios(Pelicula,"MIERCOLES",S):-
	horarioP(Pelicula,[_,_,L|_]),
	listaHorariosString(L,S).

devolver_Horarios(Pelicula,"JUEVES",S):-
	horarioP(Pelicula,[_,_,_,L|_]),
	listaHorariosString(L,S).

devolver_Horarios(Pelicula,"VIERNES",S):-
	horarioP(Pelicula,[_,_,_,_,L|_]),
	listaHorariosString(L,S).

devolver_Horarios(Pelicula,"SABADO",S):-
	horarioP(Pelicula,[_,_,_,_,_,L|_]),
	listaHorariosString(L,S).

devolver_Horarios(Pelicula,"DOMINGO",S):-
	horarioP(Pelicula,[_,_,_,_,_,_,L]),
	listaHorariosString(L,S).






writeInfo(Msg,[M,[[_,_,Dia,Horario]|L]],[M,[[Keyword,Pelicula,Dia,Horario]|L]]):-
	searchKeyword(Msg,Keyword,1,1),
	genero(Keyword),
	recomendarPelicula(Keyword,[Pelicula,_]),!.




writeInfo(Msg,[M,[[Genero,Pelicula,_,Horario]|L]],[M,[[Genero,Pelicula,Keyword,Horario]|L]]):-
	searchKeyword(Msg,Keyword,_,_),
	dia(Keyword),!.


writeInfo(Msg,[M,[[Genero,Pelicula,Dia,_]|L]],[M,[[Genero,Pelicula,Dia,Keyword]|L]]):-
	searchKeyword(Msg,Keyword,_,_),
	horario(Keyword),!.

writeInfo(Msg,[M,[[_,_,Dia,Horario]|L]],[M,[[Genero,Pelicula,Dia,Horario]|L]]):-
	searchMovie(Msg,Pelicula,Genero).

writeInfo(_,L,L).













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
	atomic_list_concat(MsgL," ",Msg),!.


lastMsgFrom(Usr,[H],Msg):-
	msgFrom(Msg,Usr,H).

lastMsgFrom(Usuario,[_|T],Msg):-
	lastMsgFrom(Usuario,T,Msg).


genNewUser(["","","",""]).

replaceBrackets2(L,[],L):-!.
replaceBrackets2([""|L],[H|T],Salida):-
	append([H],L1,Salida),
	replaceBrackets2(L,T,L1).
replaceBrackets2([H|L],T,Salida):-
	append([H],L1,Salida),
	replaceBrackets2(L,T,L1).

replaceBrackets(InputStr,Lista,OutputStr):-
	split_string(InputStr,"{}","",List1),
	replaceBrackets2(List1,Lista,List2),
	list_string(List2,OutputStr),!.



genRespuesta(Msg,Chatbot,[Mensajes,_],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,0,_),
	searchKeyword(Msg,_,1,0),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,R).



genRespuesta(Msg,Chatbot,[Mensajes,[[Genero,_,_,_]|_]],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,1,0),
	searchKeyword(Msg,_,Forma,Resp),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,Respuesta),
	Forma==1,
	Resp==1,
	recomendarPelicula(Genero,[Pel,Puntuacion]),
	atom_string(Puntuacion,StrPuntuacion),
	replaceBrackets(Respuesta,[Pel,StrPuntuacion],R).






genRespuesta(Msg,Chatbot,[Mensajes|_],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,0,_),
	searchKeyword(Msg,_,2,0),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,R).

genRespuesta(Msg,Chatbot,[Mensajes|_],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,2,0),
	searchKeyword(Msg,_,2,1),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,R).

genRespuesta(Msg,Chatbot,[Mensajes,[[_,Pelicula,Dia,_]|_]],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,2,1),
	searchKeyword(Msg,_,2,2),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,Respuesta),
	devolver_Horarios(Pelicula,Dia,Horarios),
	replaceBrackets(Respuesta,[Dia,Horarios],R).





genRespuesta(Msg,Chatbot,[Mensajes|_],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,0,_),
	searchKeyword(Msg,_,3,0),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,R).

genRespuesta(Msg,Chatbot,[Mensajes|_],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,3,0),
	searchKeyword(Msg,_,3,1),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,R).

genRespuesta(Msg,Chatbot,[Mensajes,[[_,Pelicula,Dia,_]|_]],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,3,1),
	searchKeyword(Msg,_,3,2),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,Respuesta),
	devolver_Horarios(Pelicula,Dia,Horarios),
	replaceBrackets(Respuesta,[Dia,Horarios],R).

genRespuesta(Msg,Chatbot,[Mensajes,[[_,_,Dia,Horario]|_]],Seed,R):-
	lastMsgFrom("Chatbot",Mensajes,RespuestaChatbot),
	checkLastMsg(RespuestaChatbot,Chatbot,3,2),
	searchKeyword(Msg,_,3,3),
	possibleResponses(Msg,Chatbot,[Mensajes|_],Lista_respuestas),
	randomChoose(Lista_respuestas,Seed,Respuesta),
	replaceBrackets(Respuesta,[Dia,Horario],R).








possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],Forma,Resp),
	searchKeyword(Msg,_,Forma,Resp),
	findall(X,mensaje(Personalidad,Forma,Resp,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],0,_),
	searchKeyword(Msg,_,1,0),
	findall(X,mensaje(Personalidad,1,0,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],0,_),
	searchKeyword(Msg,_,2,0),
	findall(X,mensaje(Personalidad,2,0,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],2,0),
	searchKeyword(Msg,_,2,1),
	findall(X,mensaje(Personalidad,2,1,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],2,1),
	searchKeyword(Msg,_,2,2),
	findall(X,mensaje(Personalidad,2,2,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],0,_),
	searchKeyword(Msg,_,3,0),
	findall(X,mensaje(Personalidad,3,0,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],3,0),
	searchKeyword(Msg,_,3,1),
	findall(X,mensaje(Personalidad,3,1,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],3,1),
	searchKeyword(Msg,_,3,2),
	findall(X,mensaje(Personalidad,3,2,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],3,2),
	searchKeyword(Msg,_,3,3),
	findall(X,mensaje(Personalidad,3,3,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],1,0),
	searchKeyword(Msg,_,1,1),
	findall(X,mensaje(Personalidad,1,1,X),L).
possibleResponses(Msg,[Personalidad|_],[Mensajes|_],L):-
	lastMsgFrom("Chatbot",Mensajes,Respuesta),
	checkLastMsg(Respuesta,[Personalidad|_],1,1),
	searchKeyword(Msg,_,1,2),
	findall(X,mensaje(Personalidad,1,2,X),L).


sendMessage(Msg,Chatbot,InputLog,Seed,OutputLog):-
	writeInfo(Msg,InputLog,OutputLog1),
	genRespuesta(Msg,Chatbot,OutputLog1,Seed,Respuesta),
	writeMessage(Msg,"Usuario",OutputLog1,OutputLog2),
	writeMessage(Respuesta,"Chatbot",OutputLog2,OutputLog),!.

endDialog(Chatbot,InputLog,Seed,OutputLog):-
	fechaString(F),
	list_string(["EndDialog",F],S),
	writeStr(S,InputLog,OutputLog).

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






