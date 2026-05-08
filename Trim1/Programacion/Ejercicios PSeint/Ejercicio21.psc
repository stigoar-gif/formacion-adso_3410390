Algoritmo Ejercicio21
	// Pedir dos números y decir cuál es el mayor
	// definicion de variables
	Definir Num1 Como Real;
	Definir Num2 Como Real;
	// ENTRADA
	Escribir ' Digite su numero 1';
	Leer Num1;
	Escribir 'Digite su número 2';
	Leer Num2;
	// Proceso
	Si Num1>Num2 Entonces
		Escribir 'Su número mayor es ', Num1;
	SiNo
		
		Si Num1==Num2 Entonces
			Escribir " Sus dos números son iguales";
		SiNo
			Escribir 'Su número mayor es ', Num2;
		FinSi
		
	FinSi
FinAlgoritmo
