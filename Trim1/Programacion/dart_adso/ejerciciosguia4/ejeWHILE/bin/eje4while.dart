import 'dart:io';

void main() {
  print('Cantidad de autos:');
  int n = int.parse(stdin.readLineSync()!);

  int amarilla = 0, rosada = 0, roja = 0, verde = 0, azul = 0;
  int i = 1;

  while (i <= n) {
    print('Último dígito de la placa del auto $i:');
    int digito = int.parse(stdin.readLineSync()!);

    if (digito == 1 || digito == 2) {
      amarilla++;
    } else if (digito == 3 || digito == 4) {
      rosada++;
    } else if (digito == 5 || digito == 6) {
      roja++;
    } else if (digito == 7 || digito == 8) {
      verde++;
    } else if (digito == 9 || digito == 0) {
      azul++;
    }

    i++;
  }

  print('Amarilla: $amarilla');
  print('Rosada: $rosada');
  print('Roja: $roja');
  print('Verde: $verde');
  print('Azul: $azul');
}