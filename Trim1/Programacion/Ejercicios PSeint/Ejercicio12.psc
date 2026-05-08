Algoritmo Ejercicio12
	//Hacer un algoritmo que lea el nombre de una persona, el valor de la hora trabajada
	// y el número de horas que trabajó. Se debe mostrar nombre y pago de la persona.
	
	//Definicion de variables
	Definir NombrePersona como cadena;
	Definir NumHorasTrab como real;
	Definir ValorHora como real;
	Definir PagoTotal como real;
	
	//Entrada
	Escribir "Digite su nombre, el número de horas trabajadas y el valor de la hora";
	Leer NombrePersona,NumHorasTrab,ValorHora;
	
	//Proceso 
	PagoTotal<-NumHorasTrab*ValorHora;
	
	//salida
	Escribir "Su nombre es ", NombrePersona, " y el pago total de sus horas trabajadas es: ", PagoTotal;
	
FinAlgoritmo
