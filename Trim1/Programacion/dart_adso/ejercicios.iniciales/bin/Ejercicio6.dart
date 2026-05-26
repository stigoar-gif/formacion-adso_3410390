import 'dart:io';

void main(List<String> args) {
  /*  Pedir el precio de un producto y mostrar el valor del IVA (19%) y el precio total con 
impuesto. */

//Definicion de variables
double Precio, Iva, PrecioTotal;

//Entrada
print("Digite el precio de su producto ");
Precio = double.parse(stdin.readLineSync()!);

//Proceso
Iva = Precio*0.19;
PrecioTotal = Precio+Iva;

//Salida
print("El valor del iva de su producto es de $Iva y su precio total es de $PrecioTotal");

}