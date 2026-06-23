/*En el procesamiento del café, el control térmico es vital. Escribe un programa que simule el monitoreo de temperatura de una máquina durante el proceso de tostión. La temperatura inicial es de 180°C y debe aumentar progresivamente una cantidad de grados específica y que será aleatoria hasta alcanzar el punto ideal de tostión a 200°C.
Se debe consultar la manera de generar un número aleatorio en Dart*/

import 'dart:math';

void main() {
  int temperatura = 180;
  int grados;
  Random numeroAleatorio = Random();

  while (temperatura < 200) {
    grados = numeroAleatorio.nextInt(5) + 1;
    temperatura = temperatura + grados;

    print("La tempeeratura Aumentó $grados grados");
    print("La Temperatura actual: $temperatura °C");
  }

  print("La máquina alcanzó el punto ideal de tostión.");
}

