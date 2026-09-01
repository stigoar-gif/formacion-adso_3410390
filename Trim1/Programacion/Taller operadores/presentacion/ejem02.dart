import 'dart:io';

void main() {
  List<List<int>> matriz = [
    [0, 0],
    [0, 0]
  ];

  int suma = 0;

  print("Ingrese 4 números:");

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      print("Posición [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
      suma += matriz[i][j];
    }
  }

  print("La suma de todos los números es: $suma");
}