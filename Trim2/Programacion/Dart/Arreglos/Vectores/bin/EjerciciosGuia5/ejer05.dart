import 'dart:io';
//5. Diseñe un algoritmo que lea un número cualquiera y lo busque en el vector X, el cual tiene almacenados 12 elementos. Escribir la posición donde se encuentra almacenado el número en el vector o el mensaje “NO” si no lo encuentra. 
void main() {
  List<int> X = [];

  for (int i = 0; i < 12; i++) {
    print("Ingrese un número:");
    X.add(int.parse(stdin.readLineSync()!));
  }

  print("Número a buscar:");
  int buscar = int.parse(stdin.readLineSync()!);

  bool encontrado = false;

  for (int i = 0; i < X.length; i++) {
    if (X[i] == buscar) {
      print("Se encuentra en la posición: $i");
      encontrado = true;
    }
  }

  if (!encontrado) {
    print("NO");
  }
}