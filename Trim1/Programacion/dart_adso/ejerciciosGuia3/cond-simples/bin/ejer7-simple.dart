import 'dart:io';

void main(List<String> arguments){
//7. Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.

//DEFINICION DE VARIABLES
double monto, totalcuota;

//ENTRADA
print("Ingrese el monto");
monto = double.parse(stdin.readLineSync()!);

//PROCESO
totalcuota = monto * 0.03;

//SALIDA
if (monto > 50000){
  totalcuota = monto * 0.02;
}

print("la cuota a pagar es de: \"$totalcuota\"");

}