// Calcular el factorial de un número N
import 'dart:io';

void main(List<String> args) {
  stdout.write("Ingrese el número para calcular su factorial: ");
  int n = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  for (var i = 1; i <= n; i++) {
    factorial = factorial * i; 
  }
  print("El factorial de $n ($n!) es: $factorial");
}