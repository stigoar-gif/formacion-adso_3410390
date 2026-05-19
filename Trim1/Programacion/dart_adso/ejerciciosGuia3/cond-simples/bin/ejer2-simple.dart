import 'dart:io';

void main(List<String> arguments){
  /*2. La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un descuento del 10%. */

  //DEFINICION DE VARIABLES 
 double largo, ancho, area, PrecioMetro, precioTotal;

//ENTRADA
 stdout.writeln("Ingrese el largo del terreno");
 largo = double.parse(stdin.readLineSync()!);
 stdout.writeln("Ingrese el ancho del terreno");
 ancho = double.parse(stdin.readLineSync()!);
 print("Ingrese el precio del metro cuadrado");
 PrecioMetro = double.parse(stdin.readLineSync()!);

//PROCESO
 area = largo * ancho;
 precioTotal = area * PrecioMetro;
if ( area > 400);{
precioTotal = precioTotal * 0.10;
}

//SALIDA
print("El valor de su terreno es \$precioTotal\"");
}