import 'dart:io';

void main(List<String> arguments){
/*3. El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal.*/

//DEFINICION DE VARIABLES 
String? ModeloTraje;
// ignore: unused_local_variable
double precioUnitario, precioTotal, descuento;
int cantTrajes;

//ENTRADA
print("Ingrese el modelo del traje");
ModeloTraje = stdin.readLineSync()!;
print("Ingrese el valor unitario del traje");
precioUnitario = double.parse(stdin.readLineSync()!);
print("Ingrese la cantidad de trajes");
cantTrajes = int.parse(stdin.readLineSync()!);

//PROCESO
precioTotal = cantTrajes * precioUnitario;
if (cantTrajes >= 3);{
  descuento = precioTotal * 0.17;
}

//SALIDA
print("El modelo del traje es \"$ModeloTraje\"");
print("La cantidad de trajes solicitados es, \"$cantTrajes\"");
print("El total a pagar es de \"$precioTotal\"");
}
