import 'dart:io';

void main() {
  List<List<int>> matriz =
      List.generate(5, (_) => List.generate(6, (_) => 0));

  int suma = 0;


  for (int fila = 0; fila < 5; fila++) {
    for (int columna = 0; columna < 6; columna++) {
      stdout.write("Ingrese el número [$fila][$columna]: ");
      matriz[fila][columna] = int.parse(stdin.readLineSync()!);

      suma += matriz[fila][columna];
    }
  }

 
  print("Matriz:");

  for (int fila = 0; fila < 5; fila++) {
    for (int columna = 0; columna < 6; columna++) {
      stdout.write("${matriz[fila][columna]}\t");
    }
    print("");
  }

  print("La suma de todos los números es: $suma");
}