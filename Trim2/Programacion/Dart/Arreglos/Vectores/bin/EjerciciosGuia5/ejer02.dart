import 'dart:io';

void main(List<String> args) {
  //Llenar dos vectores A y B de 10 elementos cada uno,
  //sumar el elemento uno del vector A con el elemento
  //uno del vector B y así sucesivamente hasta 10, almacenar
  // el resultado en un vector C, e imprimir el vector resultante

  List<int> vectorA = [];
  List<int> vectorB = [];
  List<int> vectorC = [];

  for (var i = 0; i < 10; i++) {
    print("Inserte el valor #${i + 1} del Vector A");
    int numVectorA = int.parse(stdin.readLineSync()!);
    vectorA.add(numVectorA);

    print("Inserte el valor #${i + 1} del Vector B");
    int numVectorB = int.parse(stdin.readLineSync()!);
    vectorB.add(numVectorB);
  }
  for (var i = 0; i < 10; i++) {
    vectorC.add(vectorA[i] + vectorB[i]);
  }
  print(
    "La suma de los valores ingresados en el Vector A y el Vector B es $vectorC",
  );
}