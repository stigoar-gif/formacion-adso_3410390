import 'dart:io';

void main() {
  int contadorA = 0;

  do {
    print("Ingrese un carácter:");
    String caracter = stdin.readLineSync()!;

    if (caracter == "a") {
      contadorA++;
    } else {
      print("El carácter ingresado no es una 'a'.");
    }

  } while (contadorA < 10);

  print("Se leyeron 10 letras 'a'.");
}