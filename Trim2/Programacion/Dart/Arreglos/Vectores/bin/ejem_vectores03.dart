import 'dart:io';

void main(List<String> args) {
  /*Se requiere guardar 20 numeros en un vector ingresados por el usuario. Se debe decir cuantos numeros pare e impares hay. 
  Se debe mostar el producto de los pares e impares*/

  List<int> numeros = [];
  int contPares = 0; int contImpares = 0;
  int productoPares = 1;
  int sumaImpares = 0;
  int num;
  double promImpares;

//Llenar el vector con los 20 numeros del usuario 
  for (var i = 0; i < 20; i++) {
    print("Ingrese el numero #${i+1}");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
//Procesamiento
  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) { //Validación par
      contPares++; //Contador pares
      productoPares = productoPares * numeros [i]; //Producto Pares
    }else{ //Numero Impar
    contImpares++; //Contador Impares
    sumaImpares = sumaImpares + numeros [i]; // Suma impares
    }
  }
//Resultado
  print("La cantidad de pares es: $contPares");
  print("La cantidad de impares es: $contImpares");
  print("El producto de los pares es: $productoPares");
  if (sumaImpares > 0) {
    promImpares = sumaImpares / contImpares;
    print("El promedio de impares es: $promImpares");
  }else{
    print("No se puede sacar el promedio de impares");
  }
}