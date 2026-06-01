import 'dart:io';

void main(List<String> args) {
  //En una finca de café orgánico se está planificando la fertilización de los cafetos utilizando Silicorrector. La dosis depende directamente del nivel de acidez del suelo (pH). Solicite al usuario la cantidad de árboles a fertilizar y el nivel de pH del suelo. Si el pH es menor a 5.5 (suelo ácido), se requiere una "Dosis de choque" de 200 gramos por árbol. Si el pH es 5.5 o mayor, el suelo está balanceado y solo requiere una "Dosis de mantenimiento" de 50 gramos por árbol. Calcule y muestre la cantidad total de abono (en gramos y kilogramos) que se debe preparar para el lote.

  print("--- Finca Cafetera ---");

int cantArboles;
double phSuelo,dosisArbol,totalGramos,totalKilos;
String tipoDosis;

print("Ingrese la cantidad de arboles a fertilizar");
cantArboles = int.parse(stdin.readLineSync()!);

print("Ingrese el pH del suelo");
phSuelo = double.parse(stdin.readLineSync()!);

if (phSuelo < 5.5) {
  dosisArbol = 200;
  tipoDosis = "Dosis de choque (Suelo ácido)";
}else{
  dosisArbol = 50;
  tipoDosis = "Dosis de mantenimiento";
}
totalGramos = dosisArbol * cantArboles;
totalKilos = totalGramos / 1000;

print("Se deben preparar $totalGramos gramos de abono, que equivalen a $totalKilos kilos para una dosis $tipoDosis");

}