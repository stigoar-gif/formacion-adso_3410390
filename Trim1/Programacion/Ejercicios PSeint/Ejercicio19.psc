Algoritmo Ejercicio19
	//Pedir dos números y decir si uno es múltiplo del otro.
	
	//Definicion de variables
	Definir Num1 como real;
	Definir Num2 como real;
	
	//entrada
	Escribir "Digite su número 1";
	Leer Num1;
	Escribir "Digite su número 2";
	Leer Num2;
	
	//Proceso 
	Si Num1%Num2==0 Entonces
		escribir ,Num1, " y ",Num2," no son multiplos el uno del otro";
	SiNo
		Escribir Num1, " si es multiplo de ", Num2;
	FinSi
	
FinAlgoritmo
