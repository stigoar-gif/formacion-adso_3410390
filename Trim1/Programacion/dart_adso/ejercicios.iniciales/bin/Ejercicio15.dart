import 'dart:io';

void main(List<String> args) {
  /* Hacer un algoritmo que lea la temperatura de un paciente; si es mayor a 38 
grados, mostrar "Tiene fiebre", de lo contrario "Temperatura normal". */

//Definicion de variables
int Temperatura;

//entrada
stdout.writeln("Digite su temperatura en grados");
Temperatura = int.parse(stdin.readLineSync()!);

if (Temperatura>38) {
print("Tiene fiebre");
}else {
  print("Temperatura normal");
}
}