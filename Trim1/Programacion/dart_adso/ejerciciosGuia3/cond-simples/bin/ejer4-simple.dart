import 'dart:io';

void main(List<String> arguments){

//4. Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves).

//DEFINICION DE VARIABLES 
String nomArticulo; 
double clave, precioOriginal, precioDescuento, precioFinal;

//ENTRADA
print("Ingrese el nombre del articulo");
nomArticulo = stdin.readLineSync()!;
print("Ingrese el precio original");
precioOriginal = double.parse(stdin.readLineSync()!);
print("Ingrese la clave (1 o 2)");
clave = double.parse(stdin.readLineSync()!);

//PROCESO
precioDescuento = precioOriginal * 0.10;
if (clave == 2){
  precioDescuento = precioOriginal * 0.20;
}
precioFinal = precioOriginal - precioDescuento;

//SALIDA
print("El nombre del articulo es \"$nomArticulo\"");
print("El precio original es:\"$precioOriginal\"");
print("El precio final con el descuento es:\"$precioFinal\"");
}