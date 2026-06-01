import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese V:");
  double v = double.parse(stdin.readLineSync()!);

  print("Ingrese Num (1, 2 o 3):");
  int num = int.parse(stdin.readLineSync()!);

  double resultado;

  switch (num) {
    case 1:
      resultado = 100 * v;
      break;

    case 2:
      resultado = pow(100, v).toDouble();
      break;

    case 3:
      resultado = 100 / v;
      break;

    default:
      resultado = 0;
  }

  print("Resultado: $resultado");
}