import 'dart:io';
//6. Diseñe un algoritmo que lea dos vectores A y B de 7 elementos cada uno y multiplique el primer elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento de B y así sucesivamente hasta llegar al séptimo elemento de A por el primer elemento de B. El resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado. 
void main() {
  List<int> A = [];
  List<int> B = [];
  List<int> C = [];

  print("Ingrese vector A");

  for (int i = 0; i < 7; i++) {
    A.add(int.parse(stdin.readLineSync()!));
  }

  print("Ingrese vector B");

  for (int i = 0; i < 7; i++) {
    B.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < 7; i++) {
    C.add(A[i] * B[6 - i]);
  }

  print("Vector resultado:");
  print(C);
}