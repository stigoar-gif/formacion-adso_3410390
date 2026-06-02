import 'dart:io';

void main(List<String> args) {
  
//Imprime los numeros del 0 al 10
print("---------------------");
for (var i = 0; i <= 10; i++) {
  print("Número $i");
}

//Imprime los numeros del 1 al 5
print("--------------------------");
for (var i = 1; i <=5; i++) {
  if (i != 5){
    stdout.write("$i, ");
  }else{
    stdout.write("$i");
  }
}

//Imprime numeros del 2 al 8
print("-----------------------");
int numFinal = 8;
String numeros = "";
for (var i = 2; i <=numFinal; i++) {
  numeros += "$i,"; // numeros = numeros + i
}
print(numeros.substring(0, numeros.length-1));

//Imprime los numeros pares hasta el 20
print("-----------------------");
for (var i = 2; i <=20; i++) {
  print("num: $i");
}

//Preguntar dos numeros al usuario y mostrar los dos rangos de ese rango
print("-----------------------");
int? numero1, numero2;
String entradaDatos;

 
print("Ingrese numero 1");
entradaDatos = stdin.readLineSync()!;
numero1 = int.parse(stdin.readLineSync()!);
numero1 = int.tryParse(entradaDatos) ?? 0;

print("Ingrese numero 2");
entradaDatos = stdin.readLineSync()!;
numero2 = int.parse(stdin.readLineSync()!);
numero2 = int.tryParse(entradaDatos) ?? 3;
if (numero1 <= numero2 ) {
for (var i = numero1; i <numero2 ; i++) {
  print("| $i |");
  }
  }else{
  print("Rango Incorrecto");
  }

//Mostrar los numeros del -20 al 20.
print("-----------------------------");
for (var i = -20; i <=20; i++) {
  print("$i");
}
}