import 'dart:io';

void main(List<String> args) {
  //Bloque 3 Estructuras condicionales Simple y Doble
  // Pedir un número al usuario y determinar si es divisible por 5.

  //Definicion de variables
  double Numero;

  //Entrada
  print("Digite su número y te diremos si es divisible por 5");
  Numero = double.parse(stdin.readLineSync()!);

  //Proceso -  Salida
  if (Numero % 5 == 0){
    print("Su número si es divisible por 5");
  } else {
    print("Su número no es divisible por 5");
  }
}