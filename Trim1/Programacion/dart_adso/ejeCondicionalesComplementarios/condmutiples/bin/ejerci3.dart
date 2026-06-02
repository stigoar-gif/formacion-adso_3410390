//Una empresa de logística internacional requiere automatizar sus cotizaciones. Solicite el peso del paquete en kilogramos y el continente de destino (1: América del Norte, 2: Europa, 3: Asia). Cada destino tiene una tarifa diferente por kilogramo y, adicionalmente, un impuesto aduanero fijo.a.América del Norte: $15.000 / kg + $25.000 impuesto aduanero.b.Europa: $25.000 / kg + $40.000 impuesto aduanero.c.Asia: $35.000 / kg + $60.000 impuesto aduanero. Utilice un switch para asignar estos dos valores (tarifa por kilo e impuesto) en variables. Al final del programa, calcule el total a pagar y muéstrelo desglosado

import 'dart:io';

void main(List<String> args) {
  
double pesoKG, totalPago, impuestoAduana,tarifa;
int continente;

print("Ingrese el peso del paquete");
pesoKG = double.parse(stdin.readLineSync()!);

print("Ingrese el continente de destino (1.america del norte | 2. europa | 3. asia) ");
continente = int.parse(stdin.readLineSync()!);

switch (continente) {
  case 1:
  tarifa = 15000;
  impuestoAduana = 25000;    
    break;

  case 2:
    tarifa = 25000;
  impuestoAduana = 40000;
  break;

  case 3:
    tarifa = 35000;
  impuestoAduana = 60000;
  break;

  default:
  tarifa = 0;
  impuestoAduana = 0;
  print("Destino no encontrado");
  break;
}
  totalPago = tarifa / pesoKG + impuestoAduana;
  print("El total de su pago es: $totalPago, y su continente es: $continente");
}