import 'dart:io';

void main() {
  int claveCorrecta = 1234;
  int clave = 0;

  while (clave != claveCorrecta) {
    print("Ingrese la clave numérica:");
    clave = int.parse(stdin.readLineSync()!);

    if (clave != claveCorrecta) {
      print("Clave incorrecta. Intente nuevamente.\n");
    }
  }

  print("Clave correcta. Acceso permitido.");
}