 //El sistema de seguridad Industri-ID realiza una validación exhaustiva para el ingreso al complejo del SENA. a.Primer nivel: Solicita el estado de la tarjeta RFID (1 para Activa, 0 para Inactiva). Si está inactiva, bloquea el acceso inmediatamente sin preguntar más datos.b.Segundo nivel: Si la tarjeta está activa, solicita el rol del usuario ("instructor", "administrativo" o "aprendiz").i.Si es "instructor" o "administrativo", se le concede acceso total de forma inmediata (acceso 24/7).iiSi es "aprendiz", el sistema debe hacer una validación adicional.c.Tercer nivel (Anidado dentro de aprendiz): El sistema solicita ingresar la hora actual en formato militar (0 a 23). Si la hora está entre las 6 y las 18 (6:00 AM a 6:00 PM), se le permite el ingreso a los ambientes de formación. Si está fuera de ese rango, se le deniega el acceso por horario no autorizado.Desarrolle el algoritmo utilizando condicionales anidados para resolver esta lógica de seguridad.
import 'dart:io';

void main(List<String> args) {
  int estadoT;
  String rol;
  double hora;

  print("Ingrese el estado de la tarjeta (1.Activa 0.Inactiva)");
  estadoT = int.parse(stdin.readLineSync()!);
  if (estadoT == 1){
    print("Ingrese su rol (Aprendiz, Instructor o Administrativo)");
    rol = stdin.readLineSync()!.trim().toLowerCase();
    if(rol == "instructor" || rol ==  "administrativo"){
      print("Acceso total 24/7"); 
    } 
    if (rol == "aprendiz"){
      print("El sistema necesita validación adicional");

      print("Ingrese su hora actual en formato militar");
      hora = double.parse(stdin.readLineSync()!);
      if(hora >=6 &&  hora <=18 ){
        print("Ingrese a los ambientes de formación");
      } else{
        print("No tiene acceso por horario no autorizado");
      }
    }
  } else{
    print("Acceso denegado: su tarjeta esta bloqueada");
  }

}