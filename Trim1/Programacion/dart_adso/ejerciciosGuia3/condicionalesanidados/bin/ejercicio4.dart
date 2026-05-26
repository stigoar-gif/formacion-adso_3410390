import 'dart:io';
void main() {
/*En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la compra */

//DEFINICION DE VARIABLES

  int llantas;
  double precioUnidad, total;


  print("Ingrese la cantidad de llantas:");
  llantas = int.parse(stdin.readLineSync()!);

  if (llantas < 5) {
    precioUnidad = 90000;
  } else {
if (llantas <= 10) {
      precioUnidad = 80000;
    } else {
      precioUnidad = 70000;
    }
  }

  total = llantas * precioUnidad;

  print("Cada llanta cuesta \"$precioUnidad\"");
  print("El total a pagar es \"$total\"");
}