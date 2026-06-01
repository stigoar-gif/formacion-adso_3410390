import 'dart:io';

void main() {
  print("Nombre:");
  String nombre = stdin.readLineSync()!;

  print("Tipo de cliente (1-4):");
  int tipo = int.parse(stdin.readLineSync()!);

  print("Cantidad de escobas:");
  int escobas = int.parse(stdin.readLineSync()!);

  print("Cantidad de recogedores:");
  int recogedores = int.parse(stdin.readLineSync()!);

  print("Cantidad de aromatizantes:");
  int aromas = int.parse(stdin.readLineSync()!);

  double subtotal =
      (escobas * 3000) +
      (recogedores * 2000) +
      (aromas * 1000);

  double porcentaje = 0;

  switch (tipo) {
    case 1:
      porcentaje = 0.05;
      break;
    case 2:
      porcentaje = 0.08;
      break;
    case 3:
      porcentaje = 0.12;
      break;
    case 4:
      porcentaje = 0.15;
      break;
  }

  double descuento = subtotal * porcentaje;
  double total = subtotal - descuento;

  print("\nCliente: $nombre");
  print("Subtotal: \$${subtotal.toStringAsFixed(2)}");
  print("Descuento: \$${descuento.toStringAsFixed(2)}");
  print("Total: \$${total.toStringAsFixed(2)}");
}