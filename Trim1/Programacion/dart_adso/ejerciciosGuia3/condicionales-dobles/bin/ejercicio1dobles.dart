import 'dart:io';

void main(List<String> arguments) {
//Desarrollar un algoritmo que lea dos numeros y los imprima en forma ascendente.

//DEFINICION DE VARIABLES
int numero1, numero2;

//ENTRADA
print("Ingrese el primer numero");
numero1 = int.parse(stdin.readLineSync()!);

print("Ingrese el segundo numero");
numero2 = int.parse(stdin.readLineSync()!);

//PROCESO

if (numero1 < numero2){
  print("$numero1");
}
else  if (numero2 > numero1){
print("$numero2");
}

//SALIDA
print("Los números de forma ascendente son:\"$numero2,$numero1\"");
}
