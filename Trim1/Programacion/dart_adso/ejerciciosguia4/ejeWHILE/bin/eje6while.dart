import 'dart:io';

void main() {
  print('Cantidad de alumnos:');
  int n = int.parse(stdin.readLineSync()!);

  int hombres = 0, mujeres = 0;
  int sumaHombres = 0, sumaMujeres = 0, sumaTotal = 0;
  int i = 1;

  while (i <= n) {
    print('Sexo del alumno $i (H/M):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Edad:');
    int edad = int.parse(stdin.readLineSync()!);

    sumaTotal += edad;

    if (sexo == 'H') {
      hombres++;
      sumaHombres += edad;
    } else if (sexo == 'M') {
      mujeres++;
      sumaMujeres += edad;
    }

    i++;
  }

  double promH = hombres > 0 ? sumaHombres / hombres : 0;
  double promM = mujeres > 0 ? sumaMujeres / mujeres : 0;
  double promT = sumaTotal / n;

  print('Promedio hombres: ${promH.toStringAsFixed(2)}');
  print('Promedio mujeres: ${promM.toStringAsFixed(2)}');
  print('Promedio total: ${promT.toStringAsFixed(2)}');
}