import 'dart:io';

void main(List<String> args) {
  /* El CEPIC desea registrar la informacion de N aprendices.
  Para cada aprendiz se debe almacenar su codigo de matricula, su nota final y su porcentaje
  de asistencia utulizando arreglos independientes (paralelos). Desarrollar una aplicacion que determine e imprima:
  La lista de aprendices que aprobaron (Nota mayor o igual a 3.0 y asistencia mayor o igual a 80%).
  El codigo y la nota final del aprendiz con promedio mas alto del grupo
  NOTA: Se debe declarar un arreglo de cadena para el codigo, un arreglo de reales para la nota final y un arreglo de enteros para el porcentaje
  de asistencia. */

  List<String> nombreAprendiz = [];
  List<String> codigoMatricula = [];
  List<double> notaFinal = [];
  List<int> porcentajeAsistencia = [];
  double notaFin = 0;
  int cantAprendices, porcentajeAsisten;

  print("Digite la cantidad de aprendices");
  cantAprendices = int.parse(stdin.readLineSync()!);


  for (var i = 0; i < cantAprendices; i++) {
    print("*" * 50);
    print("Digite su nombre #${i + 1}");
    nombreAprendiz.add (stdin.readLineSync()!);
    print("Digite su codigo de matricula");
    codigoMatricula.add(stdin.readLineSync()!);
    print("Digite su nota final");
    notaFin = double.parse(stdin.readLineSync()!);
    notaFinal.add(notaFin);
    print("Digite su porcentaje de asistencias");
    porcentajeAsisten = int.parse(stdin.readLineSync()!);
    porcentajeAsistencia.add(porcentajeAsisten);
  }
  for (var i = 0; i < cantAprendices; i++) {
    if (notaFinal [i] >= 3.0 && porcentajeAsistencia[i] >= 80) {
      print(" ${nombreAprendiz[i]} APROBADO");
    }
  }
  double notaMaxima = notaFinal[0];
  int codigoApreniz=0;

  for (var i = 0; i < cantAprendices; i++) {
    if (notaFinal[i] > notaMaxima ) {
      notaMaxima = notaFinal[i];
      codigoApreniz = i;
    }
  }
  print("La nota máxima del grupo es $notaMaxima");
  print("El codigo de su matricula es: ${codigoMatricula[codigoApreniz]}");
}