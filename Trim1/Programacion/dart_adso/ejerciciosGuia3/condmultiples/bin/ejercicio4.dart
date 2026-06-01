import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese x:");
  int x = int.parse(stdin.readLineSync()!);

  double fx;

  switch (x % 4) {
    case 0:
      fx = pow(x, 2).toDouble();
      break;

    case 1:
      fx = x / 6;
      break;

    case 2:
      fx = sqrt(x);
      break;

    case 3:
      fx = pow(x, 3).toDouble() + 5;
      break;

    default:
      fx = 0;
  }

  print("f(x) = $fx");
}