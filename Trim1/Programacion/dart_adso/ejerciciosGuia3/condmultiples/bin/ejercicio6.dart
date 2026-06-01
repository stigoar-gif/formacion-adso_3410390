import 'dart:io';

void main() {
  print("Ingrese la clave:");
  int clave = int.parse(stdin.readLineSync()!);

  print("Ingrese los minutos:");
  int minutos = int.parse(stdin.readLineSync()!);

  double precioMinuto = 0;

  switch (clave) {
    case 12:
      precioMinuto = minutos <= 3 ? 200 : 150;
      break;

    case 15:
      precioMinuto = minutos <= 3 ? 220 : 180;
      break;

    case 18:
      precioMinuto = minutos <= 3 ? 450 : 350;
      break;

    case 19:
      precioMinuto = minutos <= 3 ? 350 : 270;
      break;

    case 23:
      precioMinuto = minutos <= 3 ? 600 : 460;
      break;

    case 25:
      precioMinuto = minutos <= 3 ? 600 : 460;
      break;

    case 29:
      precioMinuto = minutos <= 3 ? 500 : 390;
      break;

    default:
      print("Clave inválida");
      return;
  }

  double total;

  if (minutos <= 3) {
    total = minutos * precioMinuto;
  } else {
    switch (clave) {
      case 12:
        total = (3 * 200) + ((minutos - 3) * 150);
        break;

      case 15:
        total = (3 * 220) + ((minutos - 3) * 180);
        break;

      case 18:
        total = (3 * 450) + ((minutos - 3) * 350);
        break;

      case 19:
        total = (3 * 350) + ((minutos - 3) * 270);
        break;

      case 23:
      case 25:
        total = (3 * 600) + ((minutos - 3) * 460);
        break;

      case 29:
        total = (3 * 500) + ((minutos - 3) * 390);
        break;

      default:
        total = 0;
    }
  }

  print("Costo total: \$${total.toStringAsFixed(2)}");
}