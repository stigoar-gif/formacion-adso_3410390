import 'dart:io';

void main() {
  print("Nombre del granjero:");
  String nombre = stdin.readLineSync()!;

  print("Tipo de fumigación (1-4):");
  int tipo = int.parse(stdin.readLineSync()!);

  print("Hectáreas:");
  double hectareas = double.parse(stdin.readLineSync()!);

  double precio = 0;

  switch (tipo) {
    case 1:
      precio = 50000;
      break;
    case 2:
      precio = 70000;
      break;
    case 3:
      precio = 80000;
      break;
    case 4:
      precio = 190000;
      break;
  }

  double total = hectareas * precio;

  if (hectareas > 100) {
    total *= 0.95;
  }

  if (total > 1000000) {
    total -= (total - 1000000) * 0.10;
  }

  print("Granjero: $nombre");
  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}