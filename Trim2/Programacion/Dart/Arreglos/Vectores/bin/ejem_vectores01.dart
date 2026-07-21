// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
void main(List<String> args) {
//Declaración de un Vector 
  List<int> numeros; //Declaración de un Vector numérico 
  List<int> numeros2; // Declaración de un Vector numérico

//Declaración con valores inciales
  List<int> edadesAprendices = [17, 16, 18,20,22,19,24];

//Imprimir un elemento del Array (Arreglo)
  print("Edad del tercer aprendiz (Posición 2)");
  print(edadesAprendices [2]);
  print("Edad del primer aprendiz (Posición 0)");
  print(edadesAprendices [0]);

//Vector de tipo String 
  List<String> Frutas = ["Mango", "Pera", "Papaya", "Piña"];
  print(Frutas [2]); //Imprime papaya
  print(Frutas [3]); //Imprime Piña
  Frutas [1] = "Manzana"; //Se remplaza el elemento de posición 1
  print(Frutas); //Imprime toda la lista

//Imprimir los elementos de un Vector
  for (var i = 0; i <= 3; i++) {
  print(Frutas [i]); //Imprimir cada elemento del vector
  }

  print ("Cantidad de Frutas> ${Frutas.length}"); //Muestra 4
  for (var i = 0; i <=Frutas.length; i++) {
  }

//Métodos para manipular listas - Add - Remove
  List<double> estaturas = [1.70,1.40,1.95,1.30];
  estaturas.add(1.65); //Se añade el elemento al final  
  estaturas.add(1.72); //Se añade el elemento al final
  estaturas.add(1.65); //Se añade el elemento al final
  estaturas.add(1.75); //Se añade el elemento al final
  print("Cantidad de elementos vector: ${estaturas.length}");
  estaturas.removeAt(2);
  print(estaturas); // [1.70, 1.40, 1.30, 1.65, 1.72, 1.75]
  estaturas.remove(1.30); // Se elimina el elemento dado
  print(estaturas); // [1.70, 1.40, 1.65, 1.72, 1.75]
  print(estaturas.elementAt(4)); //Muestra el elemento de la posición 4 
  print(estaturas.reversed); //Imprime los elementos al contrario
  print(estaturas.last); // Muestra el ultimo elemento (1.75)
  print(estaturas.first); // Muestra el Primer elemento (1.7)
  print(estaturas.reversed.last); // Muetra 1.7
}