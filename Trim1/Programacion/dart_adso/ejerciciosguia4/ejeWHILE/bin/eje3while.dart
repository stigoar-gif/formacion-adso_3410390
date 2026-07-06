import 'dart:io';

void main() {
  print('Cantidad de personas:');
  int n = int.parse(stdin.readLineSync()!);

  int hombres = 0;
  int mujeres = 0;
  int i = 1;

  while (i <= n) {
    print('Persona $i (H/M):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    if (sexo == 'H') {
      hombres++;
    } else if (sexo == 'M') {
      mujeres++;
    }

    i++;
  }

  print('Hombres: $hombres');
  print('Mujeres: $mujeres');
}