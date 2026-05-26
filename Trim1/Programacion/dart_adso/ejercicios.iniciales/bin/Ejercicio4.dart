import 'dart:io';

void main() {
//Pedir al usuario su edad actual y mostrar cuántos años tendrá en el año 2050.

// DEFINICION DE VARIABLES
int edadActual, anioActual, edadFutura;

// ASIGNACION DE VALORES
print("Ingrese su edad actual:");
edadActual = int.parse(stdin.readLineSync()!);

// 2026 COMO AÑO ACTUAL
anioActual = 2026;

// PROCESO
edadFutura = edadActual + (2050 - anioActual);

// SALIDA DE DATOS
print("En el año 2050 usted tendrá $edadFutura años.");
}