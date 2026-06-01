import 'dart:io';

void main() {
  print("Nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Horas trabajadas:");
  int horas = int.parse(stdin.readLineSync()!);

  print("Cuota por hora:");
  double cuota = double.parse(stdin.readLineSync()!);

  double sueldo;

  if (horas <= 40) {
    sueldo = horas * cuota;
  } else if (horas <= 50) {
    sueldo = (40 * cuota) +
        ((horas - 40) * cuota * 2);
  } else {
    sueldo = (40 * cuota) +
        (10 * cuota * 2) +
        ((horas - 50) * cuota * 3);
  }

  print("\nEmpleado: $nombre");
  print("Horas trabajadas: $horas");
  print("Sueldo: \$${sueldo.toStringAsFixed(2)}");
}