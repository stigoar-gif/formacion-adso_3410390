//Calcular e imprimir la tabla de multiplicar de un número cualquiera. 
//Imprimir el multiplicando, el multiplicador y el producto. 
import 'dart:io';

void main(List<String> args) {
  stdout.writeln("¿De qué número deseas ver la tabla de multiplicar?");
  int multiplicando = int.parse(stdin.readLineSync()!);
  for (var i = 1;  i<= 10;  i++) {
    
    int producto = multiplicando * i;
    print("$multiplicando x $i = $producto");
  }
}