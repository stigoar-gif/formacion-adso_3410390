//7. Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa palabra o frase es palíndroma. 
import 'dart:io';

void main(List<String> args) {
  String palabra;
  List<String> vectorPal = [];
    print("Ingrese la palabra/frase para verificar si es palindroma");
  palabra = stdin.readLineSync()!;
    print(palabra[2]);//Imprime la posicion 2 de la palabra

//Se llena el vector pal sin tener en cuenta espacios de la palabra/frase
  for (var i = 0; i < palabra.length; i++) {
    if (palabra[i] != " ") {
      vectorPal.add(palabra[i].toUpperCase());
    }
  }
  print(vectorPal);

  int inicio = 0;
  int fin = vectorPal.length -1;
  bool esPalindroma = true;
  while (inicio < fin) {
    if (vectorPal[inicio] != vectorPal[fin]) {
      print("NO ES PALABRA PALINDROMA / FRASE PALINDROMA");
      esPalindroma = false;
      break;
  }
  inicio++;
  fin--;
  }

  if (esPalindroma == true) {
    print("La palabra/frase $palabra es palindroma");
  }else{
    print("La palabra/frase $palabra NO es palindroma");
  }
}