Algoritmo Ejercicio6
	//STIVEN GONZALEZ
	//Hacer un algoritmo que lea el nombre de un artículo, el valor unitario, la cantidad a comprar y 
	//muestre el nombre y el total a pagar
	
	//Definicion de variables
	Definir NombreArt como cadena;
	Definir ValorUnit como real;
	Definir CantidadArt como entero;
	Definir TotalPagar como real;
	
	//Entrada
	Escribir "Digite el nombre del articulo, el valor unitario y la cantidad a comprar";
	Leer NombreArt, ValorUnit, CantidadArt;
	
	//Proceso 
	TotalPagar<- ValorUnit*CantidadArt;
	
	//Salida
	Escribir "El valor a pagar por el articulo ", NombreArt," es de: ",TotalPagar;
	
FinAlgoritmo
