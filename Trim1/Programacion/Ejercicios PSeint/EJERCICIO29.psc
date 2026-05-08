Algoritmo EJERCICIO29
	//STIVEN GONZALEZ 
	//Dado un monto, calcular el descuento considerado que por encima de 100
	//el descuento es del 10% y por debajo de 100, el descuento es del 2%.
	
	//DEFINICION DE VARIABLES 
	Definir monto, descuento Como Real;
	
	//ENTRADA
	Escribir "Ingrese el monto";
	leer monto;
	
	//PROCESO
	SI monto > 100 Entonces
		descuento <- monto * 0.10;
	SiNo
		descuento <- monto * 0.02;
	FinSi
	
	//SALIDA 
	Escribir "El descuento es:" ,descuento;
FinAlgoritmo
	

