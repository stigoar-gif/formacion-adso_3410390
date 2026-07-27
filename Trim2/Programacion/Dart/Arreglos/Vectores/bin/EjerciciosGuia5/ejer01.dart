import 'dart:io';
//1. Calcular el promedio de 50 valores almacenados en un vector. Determinar además cuantos son mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una lista de valores mayores que el promedio. 
void main() {
  List<double> numeros = [];
  double suma = 0;

  for (int i = 0; i < 50; i++) {
    print("Ingrese el valor ${i + 1}:");
    double valor = double.parse(stdin.readLineSync()!);
    numeros.add(valor);
    suma += valor;
  }

  double promedio = suma / 50;
  int mayores = 0;

  print("Promedio: $promedio");
  print("Valores mayores al promedio:");

  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] > promedio) {
      print(numeros[i]);
      mayores++;
    }
  }

  print("Cantidad mayores al promedio: $mayores");
}