Algoritmo EJERCICIO26
	//STIVEN GONZALEZ
	//Pedir una nota numerica entre 0 y 10, y mostrar dicha nota de la forma: cero, uno, dos, tres...
	
	//DEFINICION DE VARIABLES 
	Definir Nota Como Real;
	
	//ENTRADA 
	Escribir "Ingrese una nota entre 0 y 10";
	leer Nota;
	
	//PROCESO
	Segun Nota Hacer
		0:
			Escribir "cero";
		1:
			Escribir "uno";
		2:
			Escribir "dos";
		3:
			Escribir "tres";
		4:
			Escribir "cuatro";
		5:
			Escribir "cinco";
		6:
			Escribir "seis";
		7:
			Escribir "siete";
		8:
			Escribir "ocho";
		9:
			Escribir "nueve";
		10:
			Escribir "diez";
		De Otro Modo:
			Escribir "Numero fuera de rango";
	FinSegun
	
FinAlgoritmo

