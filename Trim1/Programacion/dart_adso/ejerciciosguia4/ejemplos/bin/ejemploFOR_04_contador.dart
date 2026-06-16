/*
En una conferencia en el Milton saber cuantos aprendices hay de ADSO,
cuantos de Automotriz y cuantos de Mecanizado. Se debe solicitar
al usuario la cantidad total de aprendices.
*/
import 'dart:io';

void main(List<String> args) {
int contadorADSO = 0;
int contadorAutomotriz = 0;
int contadorMecanizado = 0;
int cantTotal, programa;

print("Ingrese la cantidad total de aprendices");
cantTotal = int.parse(stdin.readLineSync()!);
for (int i = 0; i < cantTotal; i++) {
  print("1.ADSO");
  print("2.Automotriz");
  print("3.Mecanizado");
  print("Seleccione el programa de formacion");
programa = int.parse(stdin.readLineSync()!);

if (programa == 1) {
  contadorADSO++;
}else if(contadorAutomotriz == 2){
  contadorAutomotriz++;
}else if (contadorMecanizado == 3){
  contadorMecanizado++;
  }
}
print("El total de aprendices del programa de formacion ADSO es: $contadorADSO");
print("El total de aprendices del programa de formacion Automotriz es: $contadorAutomotriz");
print("El total de aprendices del programa de formacion Mecanizado es: $contadorMecanizado");
}