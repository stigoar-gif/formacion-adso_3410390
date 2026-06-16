import 'dart:io';
void main(List<String> args) {
  int cantPartidosJug = 14;
  int contAcertados = 0; //VARIABLE TIPO CONTADOR 
  int acertado;

for (int i = 0; i < cantPartidosJug; i++) {
  print("Ingrese resultado partido ${i+1} 1.Acertado 2.No acertado");
  acertado = int.parse(stdin.readLineSync()!);
  if (acertado == 1) {
    contAcertados ++;//AUMENTO DEL CONTADOR SI CUMPLE LA CONDICION 
  }
}
print("La cantidad de partidos acertados del participante es: $contAcertados");
}