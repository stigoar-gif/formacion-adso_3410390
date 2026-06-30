/*Gnere un menú que permita realizar las siguientes operaciones: Suma, Resta, Multiplicacion y division. Se debe contar con una opcion para salir*/

import 'dart:io';

void main(List<String> args) {
 int opcion;
 double num1, num2;
  do {
    print("Menú Calculadora");
    print("1. SUMA");
    print("2. RESTA");
    print("3. MULTIPLICACION");
    print("4. DIVISION");
    print("5. SALIR");
    print("---------------------------------");
    print("Ingrese la opcion deseada");
     opcion = int.parse(stdin.readLineSync()!);
     switch (opcion) {
       case 1:
         print("Ingrese el valor del numero 1 a sumar");
         num1 = double.parse(stdin.readLineSync()!);
          print("Ingrese el valor del numero 2 a sumar");
         num2 = double.parse(stdin.readLineSync()!);
         double sumar = num1 + num2;
         print("El valor de la suma es $sumar ");
         break;
         case 2:
        print("Ingrese el valor del número 1 a restar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del número 2 a restar");
        num2 = double.parse(stdin.readLineSync()!);
        double resta;
        if(num1 > num2){
          resta = num1 - num2;
        }else{
          resta = num2 - num1;
        }
        print("El valor de la resta es $resta");
        break;
       case 3:
        print("Ingrese el valor del número 1 a multiplicar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del número 2 a multiplicar");
        num2 = double.parse(stdin.readLineSync()!);
        double multiplicacion = num1 * num2;
        print("El valor de la multiplicacion es $multiplicacion");
        break;
         case 4:
        print("Ingrese el valor del número 1 a dividir");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del número 2 a dividir");
        num2 = double.parse(stdin.readLineSync()!);
        double division= 0;
        if (num2 == 0){
          print("ERROR, No se puede dividir entre cero");
        }else{
          division = num1 / num2;
        }
        print("El valor de la division es $division");
        break;
        case 5:
        print("Ha salido correctamente del menú");
        break;
       default:
       print("Opcion Invalida");
    }
  } while ( opcion != 5);
}
