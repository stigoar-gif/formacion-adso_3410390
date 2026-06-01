import 'dart:io';

void main() {
  double kilos;
  double precioKilo = 1300;
  double descuento = 0;

  print("Ingrese los kilos de manzanas:");
  kilos = double.parse(stdin.readLineSync()!);

  double subtotal = kilos * precioKilo;

  if (kilos <= 2) {
    descuento = 0;
  } else if (kilos <= 5) {
    descuento = subtotal * 0.10;
  } else if (kilos <= 10) {
    descuento = subtotal * 0.15;
  } else {
    descuento = subtotal * 0.20;
  }

  double total = subtotal - descuento;

  print("Subtotal: \$${subtotal.toStringAsFixed(2)}");
  print("Descuento: \$${descuento.toStringAsFixed(2)}");
  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}