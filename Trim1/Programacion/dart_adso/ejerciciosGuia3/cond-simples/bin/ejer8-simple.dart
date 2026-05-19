import 'dart:io';

void main(List<String> arguments){
//8. Dada la duración en minutos de una llamada calcular el costo, considerando:  Hasta tres minutos el costo es 600,Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros. 

//DEFINICION DE VARIABLES
int minutos;
double costo = 600;

//ENTRADA
print("minutos en llamada");
minutos = int.parse(stdin.readLineSync()!);

//PROCESO
if (minutos > 3){
  costo = 600 + (minutos - 3) * 150;
}
//SALIDA
print("El costo de la llamada es: \"$costo\"");
}