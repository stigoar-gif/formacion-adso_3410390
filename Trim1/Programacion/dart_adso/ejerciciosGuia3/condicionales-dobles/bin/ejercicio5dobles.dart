import 'dart:io';

void main(List<String> arguments){
//Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2.

  // DEFINICIÓN DE VARIABLES
  
  int tipoArticulo, cantidad, formaPago;
  double precioUnitario, subtotal, descuentoArticulo, totalFinal;

  // ENTRADA

  print("Ingrese el tipo de artículo:");
  print("1. Brocha");
  print("2. Rodillo");
  tipoArticulo = int.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad:");
  cantidad = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio unitario:");
  precioUnitario = double.parse(stdin.readLineSync()!);

  print("Forma de pago:");
  print("1. Contado");
  print("2. Crédito");
  formaPago = int.parse(stdin.readLineSync()!);

  // PROCESO

  subtotal = cantidad * precioUnitario;

  if (tipoArticulo == 1) {
    descuentoArticulo = subtotal * 0.20;
  } else {
    descuentoArticulo = subtotal * 0.15;
  }

  totalFinal = subtotal - descuentoArticulo;

  if (formaPago == 1) {
    totalFinal = totalFinal - (totalFinal * 0.07);
  }

  // SALIDA

  print("Subtotal: \"$subtotal\"");
  print("Total a pagar: \"$totalFinal\"");
}