import 'dart:io';

void main(List<String> arguments) {
  /*
  1. El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del 5% si el empleado trabajó más de 40 horas. Imprimir el nombre del empleado y su sueldo. Desarrollar el algoritmo y diagrama de flujo
  */
stdout.writeln("Ejercicio 1 - Condicionales simples");
//DEFINICION DE VARIABLES
String? nombre;
double valorHora, horasTrabajadas, salarioNeto, incentivo;

//ENTRADA
stdout.writeln("Ingrese su nombre");
nombre = stdin.readLineSync();
stdout.writeln("Ingrese la cantidad de horas trabajadas");
horasTrabajadas = double.parse(stdin.readLineSync()!);
stdout.writeln("Ingrese el valor de la hora");
valorHora = double.parse(stdin.readLineSync()!);

//PROCESO
salarioNeto = horasTrabajadas * valorHora;
incentivo = 0; 
if(horasTrabajadas > 40){
  incentivo = salarioNeto * 0.05;
}
salarioNeto = salarioNeto + incentivo;

//SALIDA
stdout.writeln("El empleado \"$nombre\", recibe un salario neto de \"$salarioNeto\"");
}
