import 'dart:io';

void main() {
  print('Cantidad de alumnos:');
  int n = int.parse(stdin.readLineSync()!);

  double suma = 0;
  int i = 1;

  while (i <= n) {
    print('Calificación del alumno $i:');
    suma += double.parse(stdin.readLineSync()!);
    i++;
  }

  double promedio = suma / n;

  print('Promedio: ${promedio.toStringAsFixed(2)}');
}