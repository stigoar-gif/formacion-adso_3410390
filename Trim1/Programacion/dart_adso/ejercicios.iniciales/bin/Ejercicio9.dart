import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //Leider Serna
  
//Bloque 2: Fórmulas Geométricas y Matemáticas 
// . Pedir el lado de un cubo y calcular su volumen V = lado^3.

//Definicion de variables
num Lado, Volumen;

//Entrada
print("Digite el lado de su cubo");
Lado = double.parse(stdin.readLineSync()!);

//Proceso
Volumen = pow(Lado, 3);
print("El volumen de su cubo es $Volumen");
}