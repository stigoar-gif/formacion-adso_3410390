import 'dart:io';

void main(List<String> args) {
  /*  Hacer un algoritmo que lea la base y la altura de un triángulo y muestre su 
perímetro y área */
double Base,Altura,Perimetro,Area;

//Entrada
print("Digite la base de el triángulo");
Base = double.parse(stdin.readLineSync()!);
print("Digite la altura de el triángulo");
Altura = double.parse(stdin.readLineSync()!);

//proceso
Area = (Base*Altura)/2;
Perimetro = Base * 3;

//Salida
print("El area de su triangulo es: $Area");
print("El perimetro de su triangulo es: $Perimetro");

}