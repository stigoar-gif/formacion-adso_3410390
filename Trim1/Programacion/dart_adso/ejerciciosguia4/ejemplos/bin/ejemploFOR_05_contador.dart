/*
Se realiza la convocatoria para estudiar el programa de ADSO en el CPIC. 
del total de aspirantes se desea saber cuantos hombres, y cuantas mujeres mayores de edad
*/
import 'dart:io';

void main(List<String> args) {
  int hombres = 0;
  int mujeresMayores = 0;
  int totalAspirantes,edad;
  String sexo;

  print("Ingrese el total de aspirantes");
  totalAspirantes = int.parse(stdin.readLineSync()!);

for (int i = 1; i < totalAspirantes; i++) {
  print("Ingrese el sexo (H para hombre | M para mujer)");
  sexo = stdin.readLineSync()!;
  print("Ingrese la edad");
  edad = int.parse(stdin.readLineSync()!);

  
    if (sexo == "H") {
      hombres++;
    } if (edad >= 18){ 
     if (sexo =="M"){
      mujeresMayores++;
    }
  }
}

print("El total Hombres es: $hombres");
print("El total de Mujeres mayores de edad es: $mujeresMayores");
}