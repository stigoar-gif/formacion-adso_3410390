void main(List<String> args) {
  bool tieneCarnet = true;
  int edad = 25;

//Operador AND
// //condicion ser mayor de edad y tener carnet

  if (tieneCarnet==true && edad >=18) {
  print("Bienvenido al centro de formacion");
  }else{
 print("No se cumplen cin los requisitos de acceso");
  }

//Operador OR
//Si es sabado 0 es festivo no hay formacion
 
bool esFestivo = true;
bool esSabado = false;
if (esFestivo==true || esSabado==true) {
  print("No hay formacion");
}else{
  print("si hay formacion");
}



//Operador NOT
//Sistema esta caido
bool sistemaCaido = true;

// ignore: dead_code
if (!sistemaCaido) {
  print("El sistema no esta caido");
}else{
  print("El sistema esta caido");
}

//Operadores Combinados
//Aprueba si (Entregó y sacó mas de 3.5)
//Tiene una excusa valida y puede presentar de nuevo el examen
double nota = 3.4;
bool entrego = true;
bool excusaValida = false;
if ((entrego==true && nota >=3.5) || excusaValida==true){
  if (entrego==true) { //si entrego el examen 
  if (nota >=3.5) {
    print("Aprueba el examen");
  }else{
    print("No aprueba el examen");
  }
  }else{ //no entrego examen
  if (excusaValida == true) {
    print("Puede presentar el examen en otra fecha");
  }else{
    print("No puede presentar examen");
  
  }
}
}else{
  print("No aprueba ni puede presentar el examen");

 }  
}