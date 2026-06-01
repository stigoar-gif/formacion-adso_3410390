import 'dart:io';

void main() {
  double capital;
  double prestamo = 0;

  print("Ingrese el capital actual:");
  capital = double.parse(stdin.readLineSync()!);

  if (capital < 0) {
    prestamo = 1000000 - capital;
    capital = 1000000;
  } else if (capital < 2000000) {
    prestamo = 2000000 - capital;
    capital = 2000000;
  }

  double equipo = 500000;
  double mobiliario = 200000;

  double restante = capital - equipo - mobiliario;

  double insumos = restante / 2;
  double incentivos = restante / 2;

  print("Prestamo solicitado: \$${prestamo.toStringAsFixed(2)}");
  print("Equipo de computo: \$${equipo.toStringAsFixed(2)}");
  print("Mobiliario: \$${mobiliario.toStringAsFixed(2)}");
  print("Insumos: \$${insumos.toStringAsFixed(2)}");
  print("Incentivos: \$${incentivos.toStringAsFixed(2)}");
}