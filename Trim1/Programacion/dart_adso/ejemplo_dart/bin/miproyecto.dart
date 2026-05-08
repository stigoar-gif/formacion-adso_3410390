
import 'dart:io';

void main(List<String> arguments) {

//Escribe mensaje en la consola
  print('Hello world!');

//Definicion de variable tipo Cadena
String programaFormacion = "Analisis y Desarrollo de Software";

//Definicion de variable tipo Entero
int cantAprendices = 28;

//Definicion de variable tipo Real 
double promedioNotasGrupo = 3.7;

//Definicion de variable logica o Booleana. True ó False
bool estaActivo = false; 

//Definicion de constantes. Se asigna el tiempo de compilacion
// ignore: constant_identifier_names
const Pi= 3.1416;

//Definicion de constantes que se asignan en tiempo de ejecucion
final fechaActual = DateTime.now();

//Escribir mensajes por consola
print(programaFormacion);//Imprime valor de la variable
print('-------------');//Imprime texto
print("programaFormacion: $programaFormacion");
print("cantAprendices: $cantAprendices");
print("promedioNotasGrupo: $promedioNotasGrupo");
print("estaActivo: $estaActivo");
print("PI $Pi y la fecha actual es: $fechaActual");

/*Operaciones de LEER (obtener datos de usuario)
y ESCRIBIR (mostrar en pantalla)*/
String? nombre;//Variable que permite nulos
int edad;
double peso;
stdout.writeln("Bienvenid@ a nuestra App");
stdout.writeln("Ingrese su nombre");
nombre = stdin.readLineSync();
stdout.writeln("Ingrese su edad");
edad = int.parse(stdin.readLineSync()!);
stdout.writeln("Ingrese su peso");
peso = double.parse(stdin.readLineSync()!);
stdout.writeln("Su nombre es $nombre, tiene $edad años y un peso de $peso");
}