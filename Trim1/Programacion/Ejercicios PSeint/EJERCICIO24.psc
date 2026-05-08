Algoritmo EJERCICIO24
	//STIVEN GONZALEZ
	//Pedir un numero entre 0 y 9.999 y decir cuantas cifras tiene.
	
	//DEFINICION DE VARIABLES 
	Definir numero Como Entero;
	
	//ENTRADA
	Escribir "Ingrese un numero entre el 0 y el 9.999";
	leer numero;
	
	//PROCESO
	si numero < 10 Entonces
		Escribir "Tiene 1 cifra";
	SiNo
		si numero < 100 Entonces
			Escribir "Tiene 2 cifras";
		SiNo
			si numero < 1000 Entonces
				Escribir "Tiene 3 cifras";
			SiNo
				Escribir "Tiene 4 cifras";
			FinSi
		
		FinSi
	FinSi
FinAlgoritmo

