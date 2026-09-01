import 'dart:io';
void main() {
  List<List<int>> matriz = [
    [0, 0],
    [0, 0]
  ];

  print("Ingrese 4 números:");

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      print("Posición [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("La matriz es:");

  for (int i = 0; i < 2; i++) {
    print(matriz[i]);
  }
}