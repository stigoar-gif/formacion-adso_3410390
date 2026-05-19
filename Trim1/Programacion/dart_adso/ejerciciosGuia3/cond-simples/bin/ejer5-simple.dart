import 'dart:io';

void main(List<String> arguments){
  //5. Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más. 

  //DEFINICION DE VARIABLES
  double total,precioUnitario;
  int cantLlanta;

  //ENTRADA
print("Ingrese la cantidad de llantas a comprar");
cantLlanta = int.parse(stdin.readLineSync()!);

//PROCESO
precioUnitario = 80000;
if (cantLlanta >= 5){
  precioUnitario = 70000;
}

//SALIDA
total = cantLlanta * precioUnitario;
print("El total a pagar es:\"$total\"");

}