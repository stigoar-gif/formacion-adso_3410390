// Muestreo de 50 personas para determinar el promedio de peso por categorías
import 'dart:io';

void main(List<String> args) {
  int totalPersonas = 50;
  int cantNinos = 0, cantJovenes = 0, cantAdultos = 0, cantMayores = 0;
  double pesoNinos = 0, pesoJovenes = 0, pesoAdultos = 0, pesoMayores = 0;

  for (var i = 0; i < totalPersonas; i++) {
    stdout.write("Ingrese la edad: ");
    int edad = int.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el peso (en kg): ");
    double peso = double.parse(stdin.readLineSync()!);
    if (edad >= 0 && edad <= 12) {
      cantNinos++;
      pesoNinos += peso;
    } else if (edad >= 13 && edad <= 29) {
      cantJovenes++;
      pesoJovenes += peso;
    } else if (edad >= 30 && edad <= 59) {
      cantAdultos++;
      pesoAdultos += peso;
    } else if (edad >= 60) {
      cantMayores++;
      pesoMayores += peso;
    }
  }
  print("Niños (0-12): ${ (pesoNinos / cantNinos)} kg");
  print("Jóvenes (13-29): ${ (pesoJovenes / cantJovenes)} kg");
  print("Adultos (30-59): ${ (pesoAdultos / cantAdultos)} kg");
  print("Adultos Mayores (60+): ${ (pesoMayores / cantMayores)} kg");

}