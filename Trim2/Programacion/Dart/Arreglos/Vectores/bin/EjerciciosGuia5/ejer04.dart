import 'dart:io';
//4. Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original e imprimir el vector resultante. 
void main() {
  List<int> original = [];
  List<int> inverso = [];

  for (int i = 0; i < 8; i++) {
    print("Ingrese un número:");
    original.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 7; i >= 0; i--) {
    inverso.add(original[i]);
  }

  print("Vector original:");
  print(original);

  print("Vector inverso:");
  print(inverso);
}