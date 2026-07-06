import 'dart:io';

void main() {
  String continuar;
  String mejorControl = "";
  double mejorPromedio = 0;

  do {
    print("Número de control:");
    String control = stdin.readLineSync()!;

    double suma = 0;
    int unidad = 1;

    do {
      print("Calificación de la unidad $unidad:");
      suma += double.parse(stdin.readLineSync()!);
      unidad++;
    } while (unidad <= 5);

    double promedio = suma / 5;

    if (promedio > mejorPromedio) {
      mejorPromedio = promedio;
      mejorControl = control;
    }

    print("¿Desea ingresar otro alumno? (S/N)");
    continuar = stdin.readLineSync()!.toUpperCase();

  } while (continuar == "S");

  print("Número de control con mayor promedio: $mejorControl");
  print("Promedio: ${mejorPromedio.toStringAsFixed(2)}");
}