Algoritmo EJERCICIO23
	//STIVEN GONZALEZ
	//Pedir 3 numeros y mostrarlos ordenados de mayor a menor.
	//DEFINICION DE VARIABLES
	Definir a,b,c, aux Como Real;
	
	//ENTRADA
	Escribir "Ingrese tres numeros";
	leer a,b,c;
	
	//PROCESO
	si a < b Entonces
		aux <- a;
		a <- b;
		b <- aux;
	FinSi
	
	si a < c Entonces
		aux <- a;
		a <- c;
		c <- aux;
	FinSi
	si b < c Entonces
		aux <- b;
		b <- c;
		c <- aux;
	FinSi
	
	//SALIDA
	Escribir "Los numeros ordenados de mayor a menor son:", a,"," ,b, "," ,c;
FinAlgoritmo

