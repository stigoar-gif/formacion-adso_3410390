import 'dart:io';

void main(List<String> arguments){
//Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera: Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra.

//DEFINICION DE VARIABLES

double salarioSemanal;
int horas;

//ENTRADA

print("Ingrese las horas trabajadas");
horas = int.parse(stdin.readLineSync()!);

//PROCESO

if (horas <= 40) {
salarioSemanal = horas * 16;
}
else {
  salarioSemanal = (40 * 16) + ((horas - 40) * 20);
}

//SALIDA
print("El salario semanal es: \"$salarioSemanal\"");

}