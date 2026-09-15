
class Empleado {
  String nomEmpleado;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  //contructor 

  Empleado (this.nomEmpleado, this.edad, this.salario, this.puesto, this.tipoContrato);

  void aumentarSalario(double porcentaje){
    salario += salario * (porcentaje/100);
  }
  void cumplirAnios(){
    edad++;
  }
  void cambiarPuesto(String nuevoPuesto){
    puesto = nuevoPuesto;
  }
  double calcularBonificacion(){
    switch (tipoContrato.toLowerCase()){
      case "contratista":
      return salario * 0.10;
      case "temporal":
      return salario * 0.5;
      case "indefinido":
      return salario * 0.15;
      default:
      return 0.0;
    }
  }
  void mostrarInformacion(){
    print("-------------------------");
    print("nombre: $nomEmpleado");
    print("Edad: $edad");
    print("salario: ${salario.toStringAsFixed(2)}");
    print("puesto: $puesto");
    print("tipo de contrato: $tipoContrato");
    print("Bonificacion: ${calcularBonificacion().toStringAsFixed(2)}");
    print("-------------------------");
  }
}

// Función para recorrer la lista e imprimir la información
void mostrarListaEmpleados(List<Empleado> empleados) {
  print("LISTA DE EMPLEADOS");
  for (var empleado in empleados) {
    empleado.mostrarInformacion();
  }
}

import 'dart:io';
import 'empleado.dart';

// Función para recorrer la lista e imprimir la información
void mostrarListaEmpleados(List<Empleado> empleados) {
  for (var empleado in empleados) {
    empleado.mostrarInformacion();
  }
}

void main() {
  List<Empleado> listaEmpleados = [];

  print('¿Cuántos empleados desea registrar?:');
  int cantidad = int.parse(stdin.readLineSync()!);

  // Captura de datos por el usuario mediante un ciclo
  for (int i = 0; i < cantidad; i++) {
    print( "Registro del Empleado #${i + 1}");

    print('Nombre:');
    String nombre = stdin.readLineSync()!;

    print('Edad:');
    int edad = int.parse(stdin.readLineSync()!);

    print('Salario:');
    double salario = double.parse(stdin.readLineSync()!);

    print('Puesto:');
    String puesto = stdin.readLineSync()!;

    print('Tipo de contrato (Indefinido / Temporal / Contratista):');
    String tipoContrato = stdin.readLineSync()!;

    // Instancia posicional en orden (sin usar 'required')
    listaEmpleados.add(
      Empleado(nombre, edad, salario, puesto, tipoContrato),
    );
  }

  // 5. Recorrer la lista y mostrar información inicial
  mostrarListaEmpleados(listaEmpleados);

  // 6. Probar los métodos implementados
  if (listaEmpleados.isNotEmpty) {
    print('Aumentando 10% de salario al primer empleado...');
    listaEmpleados[0].aumentarSalario(10);

    print('Incrementando edad al primer empleado...');
    listaEmpleados[0].cumplirAnios();

    if (listaEmpleados.length > 1) {
      print('Cambiando puesto al segundo empleado...');
      listaEmpleados[1].cambiarPuesto('Gerente de Área');
    }

    // Mostrar nuevamente la lista para verificar los cambios
    mostrarListaEmpleados(listaEmpleados);
  }
}

















