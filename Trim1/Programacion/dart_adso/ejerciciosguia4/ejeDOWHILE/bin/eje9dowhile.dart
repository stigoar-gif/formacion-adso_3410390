import 'dart:io';
import 'dart:math';

void main() {
  int opcion;

  do {
    print("1. Pasar de grados a radianes");
    print("2. Pasar de radianes a grados");
    print("3. Salir");

    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Ingrese los grados:");
        double grados = double.parse(stdin.readLineSync()!);

        double radianes = grados * pi / 180;

        print("Radianes: ${radianes.toStringAsFixed(4)}");
        break;

      case 2:
        print("Ingrese los radianes:");
        double radianes = double.parse(stdin.readLineSync()!);

        double grados = radianes * 180 / pi;

        print("Grados: ${grados.toStringAsFixed(4)}");
        break;

      case 3:
        print("Programa finalizado.");
        break;

      default:
        print("Opción no válida.");
    }

  } while (opcion != 3);
}