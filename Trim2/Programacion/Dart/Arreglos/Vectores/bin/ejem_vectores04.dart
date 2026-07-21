import 'dart:io';

void main(List<String> args) {
  //Llenar dos vectores A y B de 8 elementos cada uno. Crear un tercer vector C de 16 elementos que intercale los
  //valores de A y B (es decir: el primer elemento de $A$, luego el primero de B, el segundo de A, el segundo de B,
  //y así sucesivamente). Imprimir el vector C resultante.
  List<int> vectorA=[];
  List<int> vectorB=[];
  List<int> vectorC=[];

  for (var i = 0; i < 8; i++) {
    print("Ingrese el elemento #${i+1} del vector A");
    int numVector1 = int.parse(stdin.readLineSync()!);
    vectorA.add(numVector1);
  }
  for (var i = 0; i < 8; i++) {
    print("Ingrese el elemento #${i+1} del Vector B");
    int numVector2 = int.parse(stdin.readLineSync()!);
    vectorB.add(numVector2);
  }

  for (var i = 0; i < 8; i++) {
    vectorC.add(vectorA[i]);
    vectorC.add(vectorB[i]);
  }

  print("El Resultante del Vector C es $vectorC");
}