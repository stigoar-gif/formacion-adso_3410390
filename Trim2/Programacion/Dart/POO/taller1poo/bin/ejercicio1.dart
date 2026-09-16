import 'dart:io';

// 1. Clase Empleado
class Empleado {
  String nombre;
  String puesto;
  String tipoContrato;
  int edad;
  double salario;

  // 2. Constructor
  Empleado(this.nombre, this.puesto, this.tipoContrato, this.edad, this.salario);

  // 3. Métodos
  void aumentarSalario(double porcentaje) {
    salario += salario * (porcentaje / 100);
    print("Nuevo salario de $nombre: \$$salario");
  }

  void cumplirAnios() {
    edad++;
    print("$nombre ahora tiene $edad años.");
  }

  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
    print("El nuevo puesto de $nombre es: $puesto");
  }

  void mostrarInformacion() {
    print("----------------------------------------");
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("Puesto: $puesto");
    print("Tipo de Contrato: $tipoContrato");
    print("Salario: \$$salario");
    print("----------------------------------------");
  }

  double calcularBonificacion() {
    double bonificacion = 0.0;
    if (tipoContrato == "Contratista") {
      bonificacion = salario * 0.10;
    } else if (tipoContrato == "Temporal") {
      bonificacion = salario * 0.05;
    } else if (tipoContrato == "Indefinido") {
      bonificacion = salario * 0.15;
    }
    return bonificacion;
  }
}

// 5. Función para recorrer y mostrar la lista de empleados
void listarEmpleados(List<Empleado> empleados) {
  print("_"*30);
  print("LISTA DE EMPLEADOS");
  for (var emp in empleados) {
    emp.mostrarInformacion();
  }
}

// 4 y 6. Método main con entrada de usuario y pruebas
void main() {
  List<Empleado> listaEmpleados = [];

  print("¿Cuántos empleados desea registrar?");
  int cantidad = int.parse(stdin.readLineSync()!);

  // Captura de datos mediante ciclos
  for (int i = 0; i < cantidad; i++) {
    print("--- Registro Empleado #${i + 1} ---");

    print("Nombre: ");
    String nombre = stdin.readLineSync()!;

    print("Puesto: ");
    String puesto = stdin.readLineSync()!;

    print("Tipo de contrato (Indefinido / Temporal / Contratista): ");
    String tipoContrato = stdin.readLineSync()!;

    print("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    print("Salario: ");
    double salario = double.parse(stdin.readLineSync()!);

    // Instancia y adición a la lista
    Empleado emp = Empleado(nombre, puesto, tipoContrato, edad, salario);
    listaEmpleados.add(emp);
  }

  // Llama a la función para mostrar la lista completa
  listarEmpleados(listaEmpleados);

  // Probar métodos en las instancias creadas
  print("PRUEBA DE MÉTODOS");
  if (listaEmpleados.isNotEmpty) {
    Empleado emp1 = listaEmpleados[0];
    print("Probando métodos para: ${emp1.nombre}");

    emp1.cumplirAnios();
    emp1.aumentarSalario(10); // Aumento del 10%
    emp1.cambiarPuesto("Supervisor");

    double bono = emp1.calcularBonificacion();
    print("Bonificación calculada: \$$bono");

    print("Información actualizada del empleado:");
    emp1.mostrarInformacion();
  }
}



