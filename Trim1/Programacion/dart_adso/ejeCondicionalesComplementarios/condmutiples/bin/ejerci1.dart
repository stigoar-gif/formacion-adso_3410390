import 'dart:io';

void main(List<String> args) {
  print("--- Concesionario Vial ---");
//Un concesionario vial necesita calcular la tarifa de un peaje. El costo base depende del tipo de vehículo: 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula). Sin embargo, para los buses y camiones, se debe cobrar un valor adicional por cada eje que tenga el vehículo. Solicite al usuario el tipo de vehículo y el número de ejes. Utilice un switch para determinar la tarifa. Las motos pagan tarifa plana de $5.000 y los autos $10.000. Los buses pagan $15.000 + $2.000 por cada eje. Los camiones pagan $20.000 + $5.000 por cada eje. Muestre el total a pagar.

int tipoVehiculo,numEjes;
double tarifaPeaje, total;

print("Que tipo de Vehiculo (1.motos | 2. Automovil | 3. bus | 4. camion/tractomula)");
tipoVehiculo = int.parse(stdin.readLineSync()!);

switch (tipoVehiculo) {
  case 1: //MOTO
    total = 5000;
    break;
  case 2: //Automovil
  total = 10000;
    break;
  case 3: //BUS
  tarifaPeaje = 15000; 
  print("Cual es el numero de ejes del bus");
  numEjes = int.parse(stdin.readLineSync()!);
  total = tarifaPeaje + (numEjes * 2000);
  case 4: //CAMION/TRACTOMULA
  tarifaPeaje = 20000;
  print("Cual es el numero de ejes del camion o tractomula");
  numEjes = int.parse(stdin.readLineSync()!);
  total = tarifaPeaje + (numEjes * 5000);
  default:
  total = 0;
  print("Opcion no valida");
  break;
}
print("El total a pagar e: $total");
}