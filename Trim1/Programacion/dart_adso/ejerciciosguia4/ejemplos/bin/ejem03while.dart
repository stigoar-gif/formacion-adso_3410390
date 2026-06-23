/* Para un módulo del proyecto de identificación física y digital (IndustID), necesitas validar un PIN de seguridad de 4 dígitos.
 Escribe un programa que simule el ingreso de contraseñas de un usuario. Mientras el PIN ingresado sea incorrecto, 
 el sistema debe denegar el acceso*/

 import 'dart:io';

void main(List<String> args) {
String pinCorrecto = "9220";
String pinIngresado;
bool accesoConcedido = false;
int limite = 0;

while (accesoConcedido == false && limite < 4) {
  print("Ingrese la contraseña de acceso");
  pinIngresado = stdin.readLineSync()!;
if (pinIngresado == pinCorrecto) {
  print("Acceso Concedido puede ingresar");
  accesoConcedido == true;
  }else{
   print(" ");
   limite++;
  print("Numero de intentos restantes: ${4 -limite}");
  print("Contraseña Incorrecta");
  }
  if (limite == 4) {
    print("Se ha agotado el numero maximo de intentos");
    print("El acceso no se concede");
    print("Cuenta Bloqueada.");
    }
  }
}