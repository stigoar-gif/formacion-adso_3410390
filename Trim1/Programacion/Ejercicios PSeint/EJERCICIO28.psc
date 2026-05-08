Algoritmo EJERCICIO28
	//STIVEN GONZALEZ 
	//Un trabajador recibe su pago, sdegun la cantidad de horas trabajadas y su valor
	//Si la cantidad de horas trabajadas es mayor que 40, estas se consideran horas extras
	//y tienen un incremento de $10000 (diez mil) sobre el valor de la hora. Calcular y
	//mostrar el salario (pago) del trabajador.
	
	//DEFICION DE VARIABLES 
	Definir horas, valorHora, salario, extras Como Real;
	
	//ENTRADA
	Escribir "Ingrese las horas trabajadas";
	leer horas;
	Escribir "Ingrese valor por hora";
	Leer valorHora;
	
	//PROCESO
	Si horas < 40 Entonces
		extras <- horas - 40;
		salario <- (40 * valorHora) + (extras * ( valorHora + 10000 ));
	SiNo
		salario <- horas * valorHora;
	FinSi
	
	//SALIDA 
	Escribir "El salario es:" ,salario;
FinAlgoritmo
	

