/*Se desea registrar los puntos que se acumulan en cada partido
teniendo en cuenta que el maximo puntaje es 10 por partido.
mostrar al final el total de puntos acumulados y el promedio de puntos*/
import 'dart:io';

void main(List<String> args) {
  int puntos, puntosAcum = 0;
  double promedio;
  int totalPartidos = 15;

for (int i = 1; i <=totalPartidos; i++) {
  print("Cual fue el puntaje del partido $i");
  puntos = int.parse(stdin.readLineSync()!);
 puntosAcum = puntosAcum + puntos; //O puntosAcum += puntos;
}
promedio = puntosAcum / totalPartidos;
print("El total de los puntos es: $puntosAcum");
print("El promedio es: $promedio");









}