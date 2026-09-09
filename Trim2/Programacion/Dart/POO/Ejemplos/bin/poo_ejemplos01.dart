import 'dart:ffi';

class Persona {
  //atributos = caracteristicas = estados
  //Atributos de la clase 
  String nombre;
  String apellido;
  int edad;
  double imc;

  //Constructor: es un método que se ejecuta cuando se crea un objeto. Crear objeto = Instanciar una clase 

  Persona (this.nombre, this.apellido, this.edad, this.imc);

  //método = función = acción = comportamiento
  //Métodos de la clase
  void mostrarNombreCompleto(){
    print("${this.nombre} ${this.apellido}");

  }
  void esMayorEdad(){
    if(this.edad >=18){
      print("Es mayor de edad");
    }else{
      print("Es menor de edad");
    }
  }
}
void main(List<String> args) {
  //Se crea un objeto de la clase peronsa, con los atributos = nombre, apellido y edad
  var persona1 = Persona ("Mateo", "Henao", 19, );
  persona1.mostrarNombreCompleto();
  persona1.esMayorEdad();
  var persona2 = Persona("Ana", "Sanchez", 17); // Se crea otro objeto de la clase persona
  print("-"*70);
  persona2.mostrarNombreCompleto();
  persona2.esMayorEdad();
}