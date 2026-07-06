import 'dart:io';

void main() {
  print("Ingrese un número entero positivo:");
  int numero = int.parse(stdin.readLineSync()!);

  int invertido = 0;

  do {
    int digito = numero % 10;
    invertido = invertido * 10 + digito;
    numero ~/= 10;
  } while (numero > 0);

  print("Número invertido: $invertido");
}