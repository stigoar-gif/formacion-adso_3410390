//Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo. 
import 'dart:io';

void main(List<String> args) {
  double calificaciones = 40;
  double cantNotas = 0;
  double notaSola;
  double notaMasBaja = 100;
  for (var i = 0; i < calificaciones; i++) {
    stdout.writeln("Ingrese la nota ${i+1}");
    notaSola = double.parse(stdin.readLineSync()!);
    cantNotas = cantNotas + notaSola;
    if (notaSola < notaMasBaja) {
      notaMasBaja = notaSola;
    }
  } 
  double promedio = cantNotas / calificaciones;
  print("La calificación promedio del grupo es: ${promedio.toStringAsFixed(2)}");
  print("La calificación más baja de todo el grupo es: $notaMasBaja");

}