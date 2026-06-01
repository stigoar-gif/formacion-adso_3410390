import 'dart:io';

void main() {
  print("Edad:");
  double edad = double.parse(stdin.readLineSync()!);

  print("Sexo (M/F):");
  String sexo = stdin.readLineSync()!.toUpperCase();

  print("Nivel de hemoglobina:");
  double hb = double.parse(stdin.readLineSync()!);

  double min = 0, max = 0;

  if (edad <= 1 / 12) {
    min = 13;
    max = 26;
  } else if (edad <= 0.5) {
    min = 10;
    max = 18;
  } else if (edad <= 1) {
    min = 11;
    max = 15;
  } else if (edad <= 5) {
    min = 11.5;
    max = 15;
  } else if (edad <= 10) {
    min = 12.6;
    max = 15.5;
  } else if (edad <= 15) {
    min = 13;
    max = 15.5;
  } else {
    if (sexo == "F") {
      min = 12;
      max = 16;
    } else {
      min = 14;
      max = 18;
    }
  }

  if (hb < min) {
    print("Anemia");
  } else if (hb > max) {
    print("Cardiopatía");
  } else {
    print("Normal");
  }
}