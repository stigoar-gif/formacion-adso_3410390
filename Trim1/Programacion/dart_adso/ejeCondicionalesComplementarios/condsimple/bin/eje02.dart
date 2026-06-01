import 'dart:io';

void main(List<String> args) {
  //Una finca de café orgánico en Supía liquida el pago diario a sus recolectores multiplicando los kilos recolectados por el precio del kilo. Si el recolector logra entregar más de 50 kg en el día y el nivel de impurezas es menor al 5%, se le otorga un bono adicional del 10% sobre su pago total. Construir un algoritmo que solicite los kilos, el porcentaje de impurezas y el precio por kilo, calculando el pago final.

  //DEFINICION DE VARIABLES

  double kilosRecolectados, nivelImpureza, precioKilo;
  double pagoBase, pagoFinal, bono;

print("Ingrese la cantidad de kilos recolectados");
kilosRecolectados = double.parse(stdin.readLineSync()!);

print("Ingrese el precio del kilo");
precioKilo = double.parse(stdin.readLineSync()!);

print("Ingrese el nivel de impureza (ej. 3.5)");
nivelImpureza = double.parse(stdin.readLineSync()!);

pagoBase = kilosRecolectados * precioKilo;
pagoFinal = pagoBase;

//Conjuncion (Y) solamente es verdadera si las dos condiciones son verdaderas
if (kilosRecolectados > 50 && nivelImpureza <5) {
  bono = pagoBase * 0.10;
  pagoFinal = pagoBase + bono;
}

print("Para los kilos recolectados el pago es de: $pagoFinal");

}