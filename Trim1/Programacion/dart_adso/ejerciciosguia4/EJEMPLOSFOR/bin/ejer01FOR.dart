import 'dart:io';
void main() {
  double suma = 0;

  for (int i = 1; i <= 7; i++) {
    stdout.write("Ingrese la calificación $i: ");
    double nota = double.parse(stdin.readLineSync()!);
    suma += nota;
  }

  double promedio = suma / 7;

  print("Promedio: $promedio");
}