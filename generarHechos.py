#!/usr/bin/env python
# -*- coding: cp1252 -*-
def generarHechos(personalidad,listaPreguntas):
	listaHechos=[]
	i=0
	for pregunta in listaPreguntas:
		print(pregunta)
		print("Respuesta 1:")
		respuesta1=raw_input()
		respuesta1="mensaje("+personalidad+","+str(i)+',"'+respuesta1+'").\n'
		print("Respuesta 2:")
		respuesta2=raw_input()
		respuesta2="mensaje("+personalidad+","+str(i)+',"'+respuesta2 +'").\n'
		listaHechos.append(respuesta1)
		listaHechos.append(respuesta2)
		i=i+1
	return listaHechos

def escribirHechos(listaHechos):
	archivo = open("hechos.pl","a")
	for hecho in listaHechos:
		archivo.write(hecho)

	archivo.close()
	return True

listaPreguntas=["Bienvenida","recomiendame una pelicula","ACCION","Adios"]
personalidad="formal"
listaHechos=generarHechos(personalidad,listaPreguntas)

escribirHechos(listaHechos)
