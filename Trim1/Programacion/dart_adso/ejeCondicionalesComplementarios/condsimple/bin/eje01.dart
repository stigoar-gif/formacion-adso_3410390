// ignore_for_file: strict_top_level_inference

import 'dart:io';

void main(List<String> arguments){
//En el centro de formación CPIC, se requiere calcular el auxilio de transporte para los aprendices del programa ADSO. El auxilio base se calcula internamente multiplicando los días de asistencia en el mes por una tarifa fija de $5.000 diarios. Solicite al usuario el nombre del aprendiz, su municipio de residencia y los días que asistió al centro. Si el aprendiz vive fuera de "Manizales" (por ejemplo, en Villamaría o Neira), se le otorga un subsidio extra del 15% sobre el auxilio base para cubrir la distancia. Imprimir el nombre del aprendiz, el auxilio base calculado y el total a recibir.

print("--- Gestión de auxilios de Transporte CPIC---");

//DEFINICION DE VARIABLES

String nombre, municipio;
double DiasAsistencia, auxilioBase, totalRecibir;

print("Cual es su nombre");
nombre = stdin.readLineSync()??"";

print("En que municipio vive");
municipio = stdin.readLineSync()!.trim().toLowerCase();

if (municipio == "manizales");
else{
print("Usted es de manizales");
}
print("Usted no es de manizales");
}


























}