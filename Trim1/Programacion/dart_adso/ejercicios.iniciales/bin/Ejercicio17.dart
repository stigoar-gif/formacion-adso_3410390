import 'dart:io';

void main(List<String> args) {
  
  
  //Pedir tres números al usuario y mostrar cuál es el menor de los tres. 

  //Definicion de variables
  int Num1,Num2,Num3, Menor;

  //Entrada
  print("Digite su número 1");
  Num1 = int.parse(stdin.readLineSync()!);
  print("Digite su número 2");
  Num2 = int.parse(stdin.readLineSync()!);
  print("Digite su número 3");
  Num3 = int.parse(stdin.readLineSync()!);

  //Proceso - Salida
  if (Num1 <= Num2 && Num1 <= Num3){
    Menor=Num1;
    print("Su número menor es: $Menor");
  }else if (Num2<=Num1 && Num2<=Num3){
    Menor=Num2;
    print("Su número menor es: $Num2");
  }else {
    Menor = Num3;
    print("Su número menor es: $Menor");
  }
}