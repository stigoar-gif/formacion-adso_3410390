//Solicitar precio y cantidad de un producto y mostar el total a pagar con 15% decuento

//definicion de variables
import 'dart:io';
void main(List<String> args) {
  double precio, descuento, totalPagar;
int cantidad;

//entrada
stdout.writeln("Ingrese el precio del Producto");
precio = double.parse(stdin.readLineSync()!);
stdout.writeln("Ingrese la cantidad");
cantidad = int.parse(stdin.readLineSync()!);
totalPagar = precio * cantidad;
descuento = totalPagar * 0.15;
totalPagar =totalPagar - descuento;

//salida
stdout.writeln("El total a pagar es: $totalPagar");
}


