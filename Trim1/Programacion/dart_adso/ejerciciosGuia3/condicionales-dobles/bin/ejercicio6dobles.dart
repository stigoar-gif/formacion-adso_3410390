import 'dart:io';
/*El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
Porcentaje de la superficie del bosque
Tipo de árbol
70%Pino
20%Roble
10%Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
Porcentaje de la superficie del bosque
Tipo de árbol
50%Pino
30%Roble
20%Cedro
El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados. */
void main() {

  double hectareas, metrosCuadrados;
  double areaPino, areaRoble, areaCedro;
  double pinos, robles, cedros;
  
  print("Ingrese la cantidad de hectáreas:");
  hectareas = double.parse(stdin.readLineSync()!);

  metrosCuadrados = hectareas * 10000;
if (metrosCuadrados > 1000000) {
    areaPino = metrosCuadrados * 0.70;
    areaRoble = metrosCuadrados * 0.20;
    areaCedro = metrosCuadrados * 0.10;

} else {
    areaPino = metrosCuadrados * 0.50;
    areaRoble = metrosCuadrados * 0.30;
    areaCedro = metrosCuadrados * 0.20;
  }

  pinos = (areaPino / 10) * 8;
  robles = (areaRoble / 15) * 15;
  cedros = (areaCedro / 18) * 10;

  print("Cantidad de pinos: \"$pinos\"");
  print("Cantidad de robles: \"$robles\"");
  print("Cantidad de cedros: \"$cedros\"");
}