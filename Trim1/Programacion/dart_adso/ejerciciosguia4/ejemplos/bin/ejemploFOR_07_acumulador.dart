import 'dart:io';
void main() {
  int totalGeneral = 0;
  int noAportaron = 0;
  int semanaMayor = 0;
  int mayorRecaudo = 0;
  int aseo, tarde, dinero, aporte, totalSemana;
  
  print("Ingrese la cantidad de aprendices:");
  int aprendices = int.parse(stdin.readLineSync()!);
  for (int semana = 1; semana <= 4; semana++) {
  totalSemana = 0;
    for (int i = 1; i <= aprendices; i++) {
      print("Realizó el aporte semanal (1 = Sí, 0 = No)");
      aporte = int.parse(stdin.readLineSync()!);
      if (aporte == 0) {
        noAportaron++;
      }
      dinero = 1000;
      print("Llegó tarde (1 = Sí, 0 = No)");
      tarde = int.parse(stdin.readLineSync()!);
      if (tarde == 1) {
        dinero += 500;
      }
      print("Hizo el aseo (1 = Sí, 0 = No)");
      aseo = int.parse(stdin.readLineSync()!);
      if (aseo == 0) {
        dinero += 300;
      }
      totalSemana += dinero;
    }
    print("Total recogido en la semana $semana: $totalSemana");
    totalGeneral += totalSemana;
    if (totalSemana > mayorRecaudo) {
      mayorRecaudo = totalSemana;
      semanaMayor = semana;
    }
  }
  print("Total recogido en las 4 semanas: $totalGeneral");
  print("Cantidad de aprendices que no realizaron el aporte: $noAportaron");
  print("La semana que más dinero recogió fue la semana $semanaMayor");
  print("Valor recogido en esa semana: $mayorRecaudo");
}