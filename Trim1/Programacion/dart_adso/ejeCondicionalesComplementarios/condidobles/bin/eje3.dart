import 'dart:io';

void main(List<String> args) {
  //El área de Bienestar al Aprendiz del SENA ha actualizado las políticas para el servicio de restaurante. Para recibir el almuerzo subsidiado por un valor de $2.000, el aprendiz debe cumplir simultáneamente con los siguientes requisitos: pertenecer al estrato 1 o al estrato 2, Y tener cero (0) faltas disciplinarias registradas en el sistema. Si el aprendiz no cumple con todas estas condiciones, debe cancelar la tarifa regular de $6.000. Solicite al usuario su nombre, su estrato y la cantidad de faltas disciplinarias. Utilice un condicional doble con operadores lógicos para determinar el valor a pagar


String nombre;
int estrato;
double cantFaltas,totalPago;

print("Ingrese su nombre");
nombre = stdin.readLineSync()!;

print("Ingrese su estrato");
estrato = int.parse(stdin.readLineSync()!);

print("Ingrese la cantidad de faltas disciplinarias");
cantFaltas = double.parse(stdin.readLineSync()!);


if (estrato <=2) {
cantFaltas = 0;  
totalPago = 2000; 
print("tiene derecho al descuento del almuerzo");

}else{
 totalPago = 6000;
}
print("Su nombre es $nombre, el total del pago de su almuerzo es: $totalPago");

}