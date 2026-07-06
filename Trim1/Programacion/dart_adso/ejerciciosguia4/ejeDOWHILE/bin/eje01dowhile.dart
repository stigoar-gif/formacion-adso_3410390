import 'dart:io';

void main() {
  double total = 0;
  String respuesta;

  do {
    print("Ingrese el precio del artículo:");
    double precio = double.parse(stdin.readLineSync()!);

    print("Ingrese la cantidad:");
    int cantidad = int.parse(stdin.readLineSync()!);

    total += precio * cantidad;

    print("¿Desea ingresar otro artículo? (S/N)");
    respuesta = stdin.readLineSync()!.toUpperCase();

  } while (respuesta == "S");

  print("Total a pagar: ${total.toStringAsFixed(2)}");
}