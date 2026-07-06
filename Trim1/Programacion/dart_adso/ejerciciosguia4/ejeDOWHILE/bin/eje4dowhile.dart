import 'dart:io';

void main() {
  int primaria = 0;
  int secundaria = 0;
  int tecnica = 0;
  int profesional = 0;
  int posgrado = 0;
  int total = 0;

  String continuar;

  do {
    print("Nivel de estudios:");
    print("1. Primaria");
    print("2. Secundaria");
    print("3. Carrera técnica");
    print("4. Profesional");
    print("5. Posgrado");

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        primaria++;
        break;
      case 2:
        secundaria++;
        break;
      case 3:
        tecnica++;
        break;
      case 4:
        profesional++;
        break;
      case 5:
        posgrado++;
        break;
    }

    total++;

    print("¿Desea ingresar otra persona? (S/N)");
    continuar = stdin.readLineSync()!.toUpperCase();

  } while (continuar == "S");

  print("Primaria: ${(primaria * 100 / total).toStringAsFixed(2)}%");
  print("Secundaria: ${(secundaria * 100 / total).toStringAsFixed(2)}%");
  print("Carrera técnica: ${(tecnica * 100 / total).toStringAsFixed(2)}%");
  print("Profesional: ${(profesional * 100 / total).toStringAsFixed(2)}%");
  print("Posgrado: ${(posgrado * 100 / total).toStringAsFixed(2)}%");
}