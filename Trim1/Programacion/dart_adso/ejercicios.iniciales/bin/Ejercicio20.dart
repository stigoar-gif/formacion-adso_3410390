import 'dart:io';

void main(List<String> args) {
  //Pedir una calificación alfabética (A, B, C, D) y mostrar su equivalente numérico o descripción: A (Excelente), B (Bueno), C (Regular), D (Deficiente). 

//Definicion de variables
// ignore: unused_local_variable
String? CalificacionAlfa, Calificacion,Num;

//Entrada
stdout.writeln("Digite su calificacion (A,B,C,D)");
CalificacionAlfa = stdin.readLineSync();

//Condicional - Salida
if (CalificacionAlfa == "A") { 
print("Su calificación es excelente");
} if (CalificacionAlfa == "B") { 
print("Su calificación es Buena");
} if (CalificacionAlfa == "C"){
  print("Su calificación es regular");
} if (CalificacionAlfa == "D"){
print("Su calificación es Deficiente");
}
}