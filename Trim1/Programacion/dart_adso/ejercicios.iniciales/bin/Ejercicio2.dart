import 'dart:io';

void main(List<String> args) {
  /* Crear un algoritmo que pida al usuario el nombre de una ciudad y su temperatura 
actual en grados Celsius, y luego los muestre. */


  //Definicion de variables
  String? NombreCiudad;
  double TemperaturaC;

  //Entrada
  print("Digite el nombre de la ciudad");
  NombreCiudad = stdin.readLineSync();
  print("Ingrese la temperatura en grados celcius");
  TemperaturaC = double.parse(stdin.readLineSync()!);

  //Salida
  print("El nombre de su ciudad es $NombreCiudad y su temperatura en grados Celcius es de $TemperaturaC");
}