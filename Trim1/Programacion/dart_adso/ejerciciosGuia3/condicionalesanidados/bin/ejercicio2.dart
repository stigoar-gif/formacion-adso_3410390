import 'dart:io';
void main() {
  /*Dado el monto de una compra calcular el descuento considerado
•Descuento es 20% si el monto es mayor a 20000 pesos.
•Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
•no hay descuento si el monto es menor o igual a 10000 pesos. */

//DEFINICION DE VARIABLES

  double monto, descuento, total;

//ENTRADA

  print("Ingrese el monto de la compra:");
  monto = double.parse(stdin.readLineSync()!);

//PROCESO

  if (monto > 20000) {
    descuento = monto * 0.20;
  } else {
    if (monto > 10000) {
      descuento = monto * 0.10;
    } else {
      descuento = 0;
    }
  }

  total = monto - descuento;

//SALIDA

  print("El total a pagar es \"$total\"");
}