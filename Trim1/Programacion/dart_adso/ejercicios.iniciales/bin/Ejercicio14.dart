import 'dart:io';

void main(List<String> args) {
  // Pedir dos números y mostrar el resultado de restarle el menor al mayor.

  //Definicion de variables
  double Num1, Num2, Resultado1, Resultado2;

  //Entrada
  print("Digite su número 1");
  Num1 = double.parse(stdin.readLineSync()!);
  print("Digite su número 2");
  Num2 = double.parse(stdin.readLineSync()!);

  //Proceso - Salida
  if (Num1>Num2){
    Resultado1= Num1-Num2;
    print("La resta de su número mayor menos su número menor es: $Resultado1");
  }else {
    Resultado2 = Num2- Num1;
    print("La resta de su número mayor menos su número menor es: $Resultado2");
  } 
}
