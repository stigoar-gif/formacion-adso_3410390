import 'dart:io';

void main(List<String> args) {
  /* . Hacer un algoritmo que lea un número de metros y lo convierta a centímetros y 
milímetros. */

double Metros, Centimetros,Milimetros;

//entrada
print("Digite la medida en metros");
Metros = double.parse(stdin.readLineSync()!);

//Proceso
Centimetros = Metros*100;
Milimetros = Metros * 1000;

//Salida
print("Su medida en Centimetros es de: $Centimetros CM");
print("Su medida en Milímetros es de: $Milimetros ML");
}