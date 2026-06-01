
//Un propietario necesita calcular el impuesto anual de su vehículo. Las normativas fiscales establecen que los vehículos cuyo avalúo comercial supere los $150.000.000 (considerados de gama alta o lujo) deben pagar una tarifa del 2.5% sobre dicho valor. Por el contrario, los vehículos con un avalúo igual o menor a este límite pagan una tarifa del 1.5%. Solicite la marca/modelo del vehículo y su avalúo comercial actual. Determine cuál es el porcentaje aplicado y calcule el valor total del impuesto a pagar este año.

// ignore_for_file: unused_local_variable

import 'dart:io';

void main(List<String> args) {

double valorVehiculo, impuestoAnual, porcentajeImpuesto, tarifa;
String marca;
int modelo;

print("Ingrese la marca del vehiculo");
marca = stdin.readLineSync()!;

print("Ingrese el mmodelo del vehiculo");
modelo = int.parse(stdin.readLineSync()!);

print("Ingrese el valor del vehiculo");
valorVehiculo = double.parse(stdin.readLineSync()!);

if (valorVehiculo > 150000000) {
  tarifa =  2.5;
  porcentajeImpuesto = valorVehiculo * 0.025; //2.5%
}else{
tarifa =  1.5;
  porcentajeImpuesto = valorVehiculo * 0.015; //1.5%
}

impuestoAnual = valorVehiculo + porcentajeImpuesto;

print("La tarifa aplicada es de $tarifa%");
print("El impuesto es de $porcentajeImpuesto");
print("El total a pagar del impuiesto anual es de $impuestoAnual");
}
  
