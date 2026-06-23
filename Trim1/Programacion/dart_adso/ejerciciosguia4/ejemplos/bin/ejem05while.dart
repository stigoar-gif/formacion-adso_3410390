/* Un inquilino ha llegado a un acuerdo para no incurrir en mora, realizando abonos parciales mensuales a una deuda 
pendiente de arrendamiento. Escribe un programa que simule el registro de abonos que se preguntarán al usuario para saldar
una deuda inicial de 500,000 pesos usando un bucle while, hasta que el saldo quede exactamente en cero*/
import 'dart:io';

void main(List<String> args) {
  double abonoMensual;
  double valorDeuda = 500000;
  double abono = 0;
  int contMeses = 0;
  
  while (abono < valorDeuda) {
    print("Ingrese el valor abonado en el mes #${contMeses+1}");
    abonoMensual = double.parse(stdin.readLineSync()!);
    while (abonoMensual < 0) {
      print("ERROR, El abono no puede ser un valor negativo");
      print("Ingrese de nuevo el valor ahorrado del mes #${contMeses+1}");
          abonoMensual = double.parse(stdin.readLineSync()!);

    }
    abono = abono + abonoMensual;
    if (abonoMensual >= valorDeuda) {
      print("Felicitaciones, supero su deuda");
    }
    contMeses++;
  }
  print("Se abonó $abono, su deuda queda en 0");
}