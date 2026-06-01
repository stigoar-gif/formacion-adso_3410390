import 'dart:io';

void main(List<String> args) {
  //El sistema de seguridad Industri-ID realiza una doble validación para permitir el ingreso al complejo del SENA. Primero, solicita el estado de la tarjeta RFID del usuario (ingrese 1 para Activa, 0 para Inactiva). Si la tarjeta está activa, el sistema hace una segunda pregunta internamente para evaluar el rol ("instructor" o "aprendiz"). Si es instructor, tiene "Acceso total a todos los bloques". Si es aprendiz, tiene "Acceso limitado a los ambientes de formación". Si la tarjeta RFID está inactiva desde el principio, el sistema omite el rol y simplemente muestra "Acceso Denegado: Tarjeta bloqueada".

int estadoTarjeta;
String rol;

print("Ingres el estado de la tarjeta (1. Activa) (0. Inactiva)");
estadoTarjeta = int.parse(stdin.readLineSync()!);

print("Ingrese su rol (Aprendiz, Instructor, Administrativo)");
rol = stdin.readLineSync()!.trim().toLowerCase();


if (estadoTarjeta == 1) {
  if (rol == "instructor"){
    print("Acceso total a todos los bloques");
  }else if (rol == "aprendiz"){
  print("Acceso limitado a los ambientes de formacion");
  }else if (rol == "Administrativo"){
    print("Acceso a los bloques administrativos");
  }else{
    print("Su rol no existe dentro del sistema");
  }
  }else{
  print("Acceso denegado: Tarjeta bloqueada");
  }
}