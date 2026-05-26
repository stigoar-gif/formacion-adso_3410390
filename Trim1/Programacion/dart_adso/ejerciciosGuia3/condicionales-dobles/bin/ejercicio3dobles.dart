import 'dart:io';

void main(List<String> arguments){
//Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%

//DEFINICION DE VARIABLES

double total, totalPago, descuento, precio;
int cantCamisas;

//ENTRADA

print("Ingrese la cantidad de camisas");
cantCamisas = int.parse(stdin.readLineSync()!);

print("Ingrese el precio de cada camisa");
precio = double.parse(stdin.readLineSync()!);

//PROCESO
total = cantCamisas * precio;

if (cantCamisas >= 3) {
  descuento = total * 0.20; 
}
else {
  descuento = total * 0.10;
}

totalPago = total - descuento;

//SALIDA

print("El precio de las camisas es: \"$totalPago\"");



}