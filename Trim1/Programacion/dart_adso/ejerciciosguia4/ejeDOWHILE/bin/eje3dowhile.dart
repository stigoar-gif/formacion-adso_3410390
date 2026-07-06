import 'dart:io';

void main() {
  int favor = 0;
  int contra = 0;
  int abstencion = 0;
  int total = 0;

  String continuar;

  do {
    print("Ingrese el voto:");
    print("F = A favor");
    print("C = En contra");
    print("A = Abstención");

    String voto = stdin.readLineSync()!.toUpperCase();

    if (voto == "F") {
      favor++;
    } else if (voto == "C") {
      contra++;
    } else if (voto == "A") {
      abstencion++;
    }

    total++;

    print("¿Desea ingresar otro diputado? (S/N)");
    continuar = stdin.readLineSync()!.toUpperCase();

  } while (continuar == "S");

  print("A favor: ${(favor * 100 / total).toStringAsFixed(2)}%");
  print("En contra: ${(contra * 100 / total).toStringAsFixed(2)}%");
  print("Abstención: ${(abstencion * 100 / total).toStringAsFixed(2)}%");
}