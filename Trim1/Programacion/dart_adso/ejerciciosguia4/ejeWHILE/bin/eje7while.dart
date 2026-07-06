import 'dart:io';

void main() {
  print('Cantidad de números:');
  int n = int.parse(stdin.readLineSync()!);

  print('Ingrese el número 1:');
  int menor = int.parse(stdin.readLineSync()!);

  int i = 2;

  while (i <= n) {
    print('Ingrese el número $i:');
    int num = int.parse(stdin.readLineSync()!);

    if (num < menor) {
      menor = num;
    }

    i++;
  }

  print('El menor número es: $menor');
}