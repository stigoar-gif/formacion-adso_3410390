import 'dart:io';

void main() {
  //Una academia de música cobra $35.000 por clase individual. Si un estudiante inscribe entre 4 y 7 clases para el mes, recibe un 10% de descuento sobre el subtotal. Si inscribe 8 o más clases, se le mostrará un mensaje que tiene derecho a 2 boletas para un concierto. Solicite la cantidad de clases, calcule el subtotal y utilice condicionales para aplicar el descuento si corresponde. Muestre el total a pagar

  int clases;
  double subtotal, descuento, total;

  print("Ingrese la cantidad de clases inscritas:");
  clases = int.parse(stdin.readLineSync()!);

  subtotal = clases * 35000;
  descuento = 0.10;

  if (clases >= 4 && clases <= 7) {
    descuento = subtotal * 0.10;
  }

  total = subtotal - descuento;

  if (clases >= 8) {
    print("Tiene derecho a 2 boletas para un concierto");
  }

  print("Subtotal: $subtotal");
  print("Descuento: $descuento");
  print("Total a pagar: $total");
}