import 'dart:io';
void main(List<String> args) {
  /*Diseñar un algoritmo que almacene 10 números enteros en un vector. Luego, solicitar al usuario un número X a buscar. El programa debe contar cuántas veces aparece X dentro del vector y reemplazar cada una de sus apariciones por el valor 0. Finalmente, imprimir el número total de reemplazos realizados y el vector modificado.*/ 

  List<int> vector = [];
  for (int i = 0; i < 10; i++) {
    print("Ingrese el número ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);
    vector.add(numero);
  }
  print("Ingrese el número a buscar: ");
  int num = int.parse(stdin.readLineSync()!);

  int contador = 0;
  for (int i = 0; i < vector.length; i++) {
    if (vector[i] == num) {
      contador++;
      vector[i] = 0;
    }
  }
  print("Cantidad de reemplazos: $contador");
  print("Vector modificado:");
  for (int i = 0; i < vector.length; i++) {
    print(vector[i]);
  }
}