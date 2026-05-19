import 'dart:io';

void main(List<String> arguments){
  //6. En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta. 
  
  //DEFINICION DE VARIABLES
  double descuento, valorcompra,totalcompra;
  int numero;

  //ENTRADA
  print("Ingrese el valor de la compra");
  valorcompra = double.parse(stdin.readLineSync()!);
  
  print("Ingrese el número");
  numero = int.parse(stdin.readLineSync()!);

  //PROCESO
descuento = valorcompra * 0.15;
if (numero >= 74){
  descuento = valorcompra * 0.20;
}
totalcompra = valorcompra - descuento;
stdout.writeln("El valor final con el descuento es de: \"$totalcompra\"");
}