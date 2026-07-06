import 'dart:io';

void main() {
  int a = 0;
  int e = 0;
  int i = 0;
  int o = 0;
  int u = 0;

  String letra;

  do {
    print("Ingrese un carácter (# para terminar):");
    letra = stdin.readLineSync()!.toLowerCase();

    switch (letra) {
      case "a":
        a++;
        break;
      case "e":
        e++;
        break;
      case "i":
        i++;
        break;
      case "o":
        o++;
        break;
      case "u":
        u++;
        break;
    }

  } while (letra != "#");

  print("Cantidad de vocales:");
  print("A: $a");
  print("E: $e");
  print("I: $i");
  print("O: $o");
  print("U: $u");
}