//Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero. 
import 'dart:io';

void main(List<String> args) {
  int numeros;
  int nPositivos = 0, nNegativos = 0, nCero = 0;

  for (var i = 0; i < 20; i++) {
    stdout.writeln("Ingrese un numero");
    numeros = int.parse(stdin.readLineSync()!);
    if (numeros < 0) {
      nNegativos ++;
    }else if(numeros > 0){
      nPositivos ++;
    }else{
      nCero ++;
    }
  }
  print("Hay $nPositivos POSITIVOS");
  print("Hay $nNegativos NEGATIVOS");
  print("Hay $nCero CEROS");

}