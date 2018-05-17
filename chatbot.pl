

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


lista_de_peliculas_genero(GENERO,L):-
findall([P,PTJE],pelicula(P,GENERO,PTJE),L).

maxPelicula([_,P1],[_,P2],P1):-P1>P2.
maxPelicula([_,P1],[_,P2],P2):-P2>P1.
maxPelicula(X,_,X).

mejorPelicula([],[_,0]).
mejorPelicula([Pelicula|L],Pelicula2):-
maxPelicula(Pelicula,Pelicula2,P3),
mejorPelicula(L,P3).

recomendarPelicula(GENERO,P):-
lista_de_peliculas_genero(GENERO,L),
mejorPelicula(L,P).




