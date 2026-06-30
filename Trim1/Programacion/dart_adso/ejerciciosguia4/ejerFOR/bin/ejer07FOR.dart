//Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras. 
// Descuento en expendio de naranjas para 15 clientes
import 'dart:io';

void main(List<String> args) {
  int totalClientes = 15;
  double kilos, precioPorKilo, subtotal, descuento, totalCliente;
  double totalTienda = 0;

  for (var i = 0; i < totalClientes; i++) {
    stdout.write("Ingrese los kilos de naranja comprados: ");
    kilos = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el precio por kilo: ");
    precioPorKilo = double.parse(stdin.readLineSync()!);
    subtotal = kilos * precioPorKilo;
    if (kilos > 10) {
      descuento = subtotal * 0.15; 
      totalCliente = subtotal - descuento;
      print("Aplica descuento del 15%! Ahorra: $descuento");
    } else {
      totalCliente = subtotal; 
    }
    totalTienda = totalTienda + totalCliente;

    print("Total a pagar por este cliente: $totalCliente");
  }
  print("La tienda percibirá un total de: $totalTienda");
}