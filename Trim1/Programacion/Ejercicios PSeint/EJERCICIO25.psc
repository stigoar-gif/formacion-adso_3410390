Algoritmo EJERCICIO25
	//STIVEN GONZALEZ
	//Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente ( 0 - 2,9 )
	//Suficiente ( 3 - 4,5 ), y bien ( 4,6 - 5 ).
	
	//DEFINICION DE VARIABLES 
	Definir Nota Como Real;
	
	//ENTRADA
	Escribir "Ingrese una nota entre 0 y 5";
	Leer Nota;
	
	//PROCESO
	si nota >= 0 Y nota <= 2.6 Entonces
		Escribir "Nota Insuficiente";
	SiNo
		si nota >= 3 Y nota <= 4.5 Entonces
			Escribir "Nota Suficiente";
		SiNo
			si nota >= 4.6 Y nota <= 5 Entonces
				Escribir "Bien";
			SiNo
				Escribir "Nota fuera de rango";
			FinSi
		FinSi
	FinSi
FinAlgoritmo
