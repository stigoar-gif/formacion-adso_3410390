//Un concesionario está cotizando el nuevo Volkswagen Nivus 2026. Primero, el sistema pregunta el método de pago del cliente (ingrese "contado" o "credito").a. Si el cliente paga de contado, el sistema anida una nueva condición: si el valor del vehículo supera los $110.000.000, se otorga un descuento del 5%. Si es menor o igual, se otorga un 2%.b. Si el cliente paga a crédito, el sistema anida una validación diferente: pregunta a cuántos meses es el plazo. Si el plazo es mayor a 60 meses, la tasa de interés mensual es del 1.5%. Si es de 60 meses o menos, la tasa es del 1.2%. Desarrolle el algoritmo que capture el precio base del vehículo y ejecute la lógica correspondiente para informar al cliente las condiciones finales.

import 'dart:io';

void main() {
  double valorVehiculo, descuento, totalV, cuotaMensual;
  int meses, tipoPago;

  print("Ingrese el precio del vehículo:");
  valorVehiculo = double.parse(stdin.readLineSync()!);

  print("Ingrese el método de pago (1.Contado | 2.Credito)");
  tipoPago = int.parse(stdin.readLineSync()!);

 if (tipoPago == 1){
  if (valorVehiculo == 110000000) {//credito
  descuento = valorVehiculo * 0.05;
  }else{//contado
  descuento = valorVehiculo * 0.02;
  }
 totalV = valorVehiculo - descuento;
 print("El vehiculo se compra de contado");
 }else{
  print("De cuantos meses es el plazo");
  double plazo = double.parse(stdin.readLineSync()!);
  if(plazo>60){
    cuotaMensual = valorVehiculo * 0.015;
  }else{
    cuotaMensual = valorVehiculo * 0.012;
  }
  totalV = plazo * cuotaMensual;
  print("El carro se compra a credito, con un valor mensual de $cuotaMensual");
 }
}