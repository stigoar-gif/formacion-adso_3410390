//CONDICIONAL

//Condicional Simple
void main(List<String> args) {
   int edad = 18;
  if (edad >=18)
  // ignore: curly_braces_in_flow_control_structures
  print("Acceso Permitido");

   //Condicional Doble 
{double valorNota;
valorNota = 3.8;
if (valorNota < 3)
{
  print("NO aprueba la nota");
}else
{print("Aprueba la nota");
}}

//condicional anidado

   // ignore: non_constant_identifier_names
   bool TieneCuenta = true;
  double saldo = 450000;
  if (TieneCuenta == true){ //Se valida si el usuario tiene cuenta
  if(saldo >= 10000){
    print("puede retirar dinero");
  } else{
    print("No puede retirar dinero");
      }
  } else {
    print("Usted no tiene cuenta en este banco");
   }

//condicional multiple

String dia = "martes";
switch (dia){
  case "lunes":
  print("Todos hacen el aseo");
  break;
  case "martes":
  print("Dejar el repositorio FULL en GITHUB");
  break;
  case "miercoles":
  print("entrega evidencias");
  break;
  case "sabado":
  case "domingo":
  print("no hay formacion");
  break;
  default:
  print("dia normal de formacion");
}
}