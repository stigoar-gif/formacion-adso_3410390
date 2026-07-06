import 'dart:io';

void main() {
  print('Cantidad de vendedores:');
  int n = int.parse(stdin.readLineSync()!);

  int i = 1;

  while (i <= n) {
    print('Sueldo base del vendedor $i:');
    double sueldoBase = double.parse(stdin.readLineSync()!);

    double totalVentas = 0;
    int j = 1;

    while (j <= 3) {
      print('Venta $j:');
      totalVentas += double.parse(stdin.readLineSync()!);
      j++;
    }

    double comision = totalVentas * 0.10;
    double total = sueldoBase + comision;

    print('Comisión: ${comision.toStringAsFixed(2)}');
    print('Total a recibir: ${total.toStringAsFixed(2)}');

    i++;
  }
}