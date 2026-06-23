void main(List<String> args) {
/*1. Un sistema de registro en el centro CPIC necesitan asignar turnos consecutivos a los aprendices del programa ADSO que ingresan al laboratorio. Escribe un programa en Dart que agine e imprima los números de turno del 1 al 5 utilizando un bucle en WHILE */


int turno = 1;
int limiteTurnos = 5;

print("Sistema de registro CPIC");
while (turno <= limiteTurnos ) {
  print("Se ha asignado el turno: #$turno");
  turno++;

}
print("Se han asignado todos los turnos disponibles");
}