import 'dart:io';

void main() {
  print('Cantidad de obreros:');
  int n = int.parse(stdin.readLineSync()!);

  int i = 1;

  while (i <= n) {
    print('Horas trabajadas por el obrero $i:');
    int horas = int.parse(stdin.readLineSync()!);

    double salario;

    if (horas <= 40) {
      salario = horas * 20;
    } else {
      salario = (40 * 20) + ((horas - 40) * 25);
    }

    print('Salario semanal: ${salario.toStringAsFixed(2)}');

    i++;
  }
}