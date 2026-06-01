import 'dart:io';

void main() {
  print("Ingrese el nombre del mes:");
  String mes = stdin.readLineSync()!.toLowerCase();

  print("Ingrese el año:");
  int anio = int.parse(stdin.readLineSync()!);

  bool bisiesto =
      (anio % 4 == 0 && anio % 100 != 0) ||
      (anio % 400 == 0);

  switch (mes) {
    case "enero":
    case "marzo":
    case "mayo":
    case "julio":
    case "agosto":
    case "octubre":
    case "diciembre":
      print("$mes tiene 31 días");
      break;

    case "abril":
    case "junio":
    case "septiembre":
    case "noviembre":
      print("$mes tiene 30 días");
      break;

    case "febrero":
      if (bisiesto) {
        print("Febrero tiene 29 días");
      } else {
        print("Febrero tiene 28 días");
      }
      break;

    default:
      print("Mes inválido");
  }
}