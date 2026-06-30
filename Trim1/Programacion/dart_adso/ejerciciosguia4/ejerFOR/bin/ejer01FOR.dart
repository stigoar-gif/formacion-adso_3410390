//Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado de Algoritmos. 
import 'dart:io';

void main(List<String> args) {
  double notas, suma = 0;

  for (var i = 0; i < 7; i++) {
    stdout.writeln( "Ingrese su nota ${i+1}");
    notas = double.parse(stdin.readLineSync()!);
    suma = suma + notas;
  }
  double promedio = suma / 7;

  stdout.writeln("El promedio de las 7 notas es: $promedio");
}