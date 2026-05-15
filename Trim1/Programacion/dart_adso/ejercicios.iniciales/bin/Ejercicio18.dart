import 'dart:io';

void main(List<String> args) {
  //Leider Serna
  //Leer el número de un mes (1 a 4) y mostrar la estación del año correspondiente (ejemplo: 1-Verano, 2-Otoño, etc.). 

  //Definicion de variables
  int Mes;

  //Entrada
  stdout.writeln("Digite el número de un mes");
  Mes = int.parse(stdin.readLineSync()!);

  //Condicional - Salida
  if (Mes ==1){
    print("Su estación del año correspondiente es verano");
  } if (Mes ==2){
    print("Su estación del año correspondiente es Otoño ");
  } if(Mes==3) {
    print("Su estación del año correspondiente es primavera");
  } if (Mes==4){
    print("Su estación del año correspondiente es invierno");
  } else if (Mes>=5 && Mes<1) {
    print("Su número no es válido");
  }

}