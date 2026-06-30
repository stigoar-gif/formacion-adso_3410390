/* se requiere simular el lanzamiento de un dado de 6 caras. se debe lanzar el dado hasta que caiga el numero 6. En ese momento se le dirá al ususario que ganó con X cantidad de intentos*/

import 'dart:math';

void main(List<String> args) {
  int intentos = 0; //vble tipo contador
  Random lanzamiento = Random(); //Crear un objeto de la clase random
  int valordado;

  do {
    intentos++;
    print("Lanzaminto #$intentos del dado");
    valordado = lanzamiento.nextInt(6) + 1;
    print("Valor dado $valordado");
  } while (valordado != 6);
  print("Has ganado con el #6 con $intentos intento");
}