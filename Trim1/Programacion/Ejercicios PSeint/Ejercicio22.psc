Algoritmo Ejercicio22
	// Pedir dos números y mostrarlos ordenados de mayor a menor.
	
	//Definicion de variables
	Definir Num1,Num2 como real;
	
	//entrada
	Escribir "Digite su número 1";
	Leer Num1;
	Escribir "Digite su número 2";
	Leer Num2;
	
	//Proceso 
	Si Num1>Num2 Entonces
		Escribir " El orden de sus números de mayor a menor son ", Num1,"-",Num2;
	SiNo
		Escribir " El orden de sus números de mayor a menor son ", Num2,"-",Num1;
	FinSi
	
FinAlgoritmo
