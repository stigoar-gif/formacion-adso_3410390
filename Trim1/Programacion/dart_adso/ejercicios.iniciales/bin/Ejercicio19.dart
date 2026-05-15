import 'dart:io';

void main(List<String> args) {
  //Leider Serna
  //Un trabajador cobra $20.000 por hora. Si trabaja más de 48 horas, las horas adicionales se pagan como "Horas Extra" con un recargo de $5.000 sobre el valor normal. Calcular su salario total. 

  //Definicion de variables
  double PrecioHora = 20000, Horas, Recargo=5000, SalarioTotal, HorasExtra;

//Entrada
  stdout.writeln("Digite el número e horas trabajadas");
  Horas = double.parse(stdin.readLineSync()!);

  //Condicional - Salida
  if (Horas<=48){
     SalarioTotal = (Horas*PrecioHora);
     print("El salario total es de: $SalarioTotal");
  } else if (Horas>48){
    HorasExtra = (Horas - 48);
    SalarioTotal = (Recargo*HorasExtra)+(Horas*PrecioHora);
    print("El salario total es de: $SalarioTotal");
  }
}