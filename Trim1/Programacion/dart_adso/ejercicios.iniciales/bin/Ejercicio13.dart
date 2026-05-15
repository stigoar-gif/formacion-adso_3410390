import 'dart:io';

void main(List<String> args) {
  //Leider Serna
  /* Leer la edad de una persona y mostrar un mensaje indicando si es mayor de 
edad o menor de edad. */

//Definicion de variables
int Edad;

print("Digite su edad");
Edad = int.parse(stdin.readLineSync()!);

if (Edad>=18){
  print("Eres mayor de edad");
}else{
  print("No eres mayor de edad");
}
}