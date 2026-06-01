import 'dart:io';

void main() {
  int num1, num2;
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);

  if (num1 == num2) {
    print("Multiplicación: ${num1 * num2}");
  } else if (num1 > num2) {
    print("Resta: ${num1 - num2}");
  } else {
    print("Suma: ${num1 + num2}");
  }
}