import 'dart:io';

void main(List<String> args) {
  //Leider Serna
  /* Pedir el nombre de un empleado, el valor del día trabajado y el número de días 
laborados en el mes; mostrar el nombre y el salario mensual. */ 

//Definicion de variables
String? NombreEmpleado;
double ValorDia, SalarioMensual;
int Dias;

//Entrada
print("Digite su nombre de usuario");
NombreEmpleado = stdin.readLineSync();
print("Digite el valor del dia trabajado");
ValorDia = double.parse(stdin.readLineSync()!);
print("Digite el número de días trabajados en el mes ");
Dias = int.parse(stdin.readLineSync()!);

//Proceso
SalarioMensual = Dias*ValorDia;

//Salida
print("Su nombre es $NombreEmpleado y su salario mensual es de: $SalarioMensual");

}