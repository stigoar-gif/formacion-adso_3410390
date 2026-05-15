import 'dart:io';

void main(List<String> args) {
  //Leider Serna
  /*Hacer un algoritmo que lea el nombre de un conductor, la distancia recorrida 
(km) y el tiempo empleado (horas) para mostrar la velocidad promedio. */



  //Definicion de variables
  String? NombreConductor;
  double Distancia, Tiempo, VelociProm;

  //Entrada
  print("Digite el nombre del conductor");
  NombreConductor = stdin.readLineSync();
  print ("Digite la distancia recorrida en kilometros");
  Distancia = double.parse(stdin.readLineSync()!);
  print ("Digite el tiempo empleado en horas");
  Tiempo = double.parse(stdin.readLineSync()!);

  //Proceso
  VelociProm = Distancia/Tiempo;

  //Salida
  print("La velocidad promedio del conductor $NombreConductor fue de: $VelociProm km/h");
}