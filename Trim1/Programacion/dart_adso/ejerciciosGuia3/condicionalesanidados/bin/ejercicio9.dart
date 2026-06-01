import 'dart:io';

void main() {
  print("Edad:");
  int edad = int.parse(stdin.readLineSync()!);

  print("Años de antigüedad:");
  int antiguedad = int.parse(stdin.readLineSync()!);

  if (edad >= 60 && antiguedad < 25) {
    print("Jubilación por edad");
  } else if (edad < 60 && antiguedad >= 25) {
    print("Jubilación por antigüedad joven");
  } else if (edad >= 60 && antiguedad >= 25) {
    print("Jubilación por antigüedad adulta");
  } else {
    print("No cumple requisitos de jubilación");
  }
}