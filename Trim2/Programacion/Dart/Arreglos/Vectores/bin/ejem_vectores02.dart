import 'dart:io';
void main(List<String> args) {
//Solicitar datos al usuario para llenar el vector 
// -> Ingresar 10 números a un vector de enteros

  List<int> numeros =[]; // Declaración Vectores Enteros
  int num;
//Llenar todos los elementos del vector con datos de usuario
  for (var i = 0; i < 10; i++) {
  print("Ingrese el elemento #${i + 1}");
  num = int.parse(stdin.readLineSync()!);
  //Agregar el número al vector  
  numeros.add(num);
  }  
  print("*" *40); //Imprimir 40 asteriscos 
//Mostrar todos los elementos de una lista
  for (var i = 0; i < numeros.length; i++) {
  print("Elemento #${i+1}: ${numeros[i]}");
  }
  print("*" * 40);
  for (var item in numeros) {
    print("Elemento: $item");
  }

//Vector de Multiples tipos de datos
List<dynamic> ListaDinamica = [];
ListaDinamica.add(30);
ListaDinamica.add(4.5);
ListaDinamica.add("ADSO");
ListaDinamica.add(true);
int Edad = 22;
ListaDinamica.add(Edad);
List<bool> estados = [true, false, true, true, false];
ListaDinamica.add(estados);
print(ListaDinamica); //[30, 4.5, "ADSO", true, 22,[]]
if (ListaDinamica [2] == "ADSO") {
  ListaDinamica [3] = false;
}
print(ListaDinamica); //[30, 4.5, "ADSO", true, 22,[]]
}