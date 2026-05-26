
import 'dart:io';
void main() {
/*Dado tres números calcular el mayor */

//DEFINICION DE VARIABLES

  int num1, num2, mayor;

//ENTRADA

  print("Ingrese el primer número:");
  num1 = int.parse(stdin.readLineSync()!);

//PROCESO

  print("Ingrese el segundo número:");
  num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    mayor = num1;
  } else {
    mayor = num2;
  }

//SALIDA

  print("El número mayor es \"$mayor\"");
}