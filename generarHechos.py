#!/usr/bin/env python
# -*- coding: cp1252 -*-
def generarHechos(lista):
	listaHechos=[]
	personalidad=lista[0]
	listaPreguntas=lista[1]
	largoPreguntas=len(listaPreguntas)
	i=0
	j=0
	while (i<largoPreguntas):
		largoSubListaPreguntas=len(listaPreguntas[i])
		sublistaHechos=[]
		j=0
		while (j<largoSubListaPreguntas):
			print "Forma",i," Pregunta:",j," | ",listaPreguntas[i][j]
			respuesta=raw_input()
			respuesta=formatHecho(respuesta,personalidad,i,j)
			listaHechos.append(respuesta)
			j=j+1
		i=i+1
	return listaHechos

def escribirHechos(listaHechos):
	archivo = open("hechos.pl","a")
	for hecho in listaHechos:
		archivo.write(hecho)

	archivo.close()
	return True


def formatHecho(Str,perso,i,j):
	Str="mensaje("+perso+","+str(i)+","+str(j)+',"'+Str+'").\n'
	return Str



def generarPreguntas(personalidad):
	listaPreguntas=[]
	pregunta = ""
	i=0
	j=0
	while (pregunta!="@@"):
		pregunta=""
		subLista=[]
		j=0
		if (j==0):
			while not pregunta in ["@","@@"]:
				print "Forma: ",i,"Pregunta: ",j
				pregunta=raw_input()
				if not pregunta in ["@","@@"]:
					subLista.append(pregunta)
					j=j+1


			print(subLista)
			if (subLista!=[]):
				listaPreguntas.append(subLista)
				i=i+1
			j=0
	return [personalidad,listaPreguntas]


listaPreguntas=generarPreguntas("formal")

listaHechos=generarHechos(listaPreguntas)

archivo=open("listaPreguntas.txt","a")
archivo.write(str(listaPreguntas))
archivo.close()



escribirHechos(listaHechos)