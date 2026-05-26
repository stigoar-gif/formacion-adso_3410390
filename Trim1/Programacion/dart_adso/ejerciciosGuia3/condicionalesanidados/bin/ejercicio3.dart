import 'dart:io';
void main() {
/*En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10% de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de descuento. El precio de cada computadora es de $1100000 */

//DEFINICION DE VARIABLES

  int computadoras;
  double descuento, total, precio;

//ENTRADA

  print("Ingrese la cantidad de computadoras:");
  computadoras = int.parse(stdin.readLineSync()!);

//PROCESO

  precio = computadoras * 11000;

  if (computadoras < 5) {
    descuento = precio * 0.10;
  } else {
    if (computadoras < 10) {
      descuento = precio * 0.20;
    } else {
      descuento = precio * 0.40;
    }
  }

  total = precio - descuento;

//SALIDA

  print("El total a pagar es \"$total\"");
}