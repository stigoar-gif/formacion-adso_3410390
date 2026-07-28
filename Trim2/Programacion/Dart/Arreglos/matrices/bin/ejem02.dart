import 'dart:io';

void main(List<String> args) {
List<List<int>> matriz = [];
int filas = 3;
int columnas = 4;

//Ingreso de datos a la matriz por parte del usuario.
for (var i = 0; i < filas; i++) { //Ciclo externo recorre filas
  List<int> fila = [];
  for (var j = 0; j < columnas; j++) {
    print("Ingrese el número para la posicion ($i,$j)");
    int valor = int.parse(stdin.readLineSync()!);
    fila.add(valor);
  }
  matriz.add(fila);
}
print("Datos de la matriz");
for (var filas in matriz) {
  print(filas);
}

//Imprimir la matriz valor por valor
print("Valor x Valor de la matriz");
for (var i = 0; i < filas; i++) {
  for (var j = 0; j < columnas; j++) {
    print("Valor ($i $j) = ${matriz[i][j]}");
    }
    print(" - " * 20);
  }
}
