import 'dart:io';

void main(List<String> args) {
double numero;
double suma = 0; //VARIABLE DE TIPO ACUMULADOR
int valorFinal = 10;
String entradaDatos;

for (var i = 0; i <valorFinal; i++) {
  print("Ingrese el valor del numero ${i+1}");
entradaDatos = stdin.readLineSync()!;
numero = double.tryParse(entradaDatos)?? 0;
suma = suma + numero;
}
print("La suma de los numeros es $suma");
}
