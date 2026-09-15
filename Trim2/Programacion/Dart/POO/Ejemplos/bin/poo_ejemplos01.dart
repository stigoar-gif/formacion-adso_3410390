class Persona{
  //Atributos de la clase
  String _nombre;
  String _apellido;
  int _edad;
  double peso;
  //IMC


  //constructor
  Persona(this._nombre, this._apellido, this._edad, this.peso);

  void mostrarNombreCompleto(){
    print("${this._nombre} ${this._apellido}");
  }
  void esMayorEdad(){
    if (this._edad >= 18) {
      print("Es mayor de edad");
    }else{
      print("Es menor de edad");
    }
  }
  void estadoSalud(){
    if(this.peso < 18.5){
      print("Tiene bajo peso");
      print("Riesgo aumentado (Desnutrición, debilidad ósea)");
    }else if(this.peso < 24.9){
      print("Tiene peso normal/Saludable");
      print("Riesgo minimo/promedio");
    }else if(this.peso < 29.9){
      print("Sobrepeso (preobesidad)");
      print("Riesgo aumentado (problemas cardiometabólicos)");
    }else if(this.peso < 34.9){
      print("Obsidad grado I");
      print("Riesgo alto");
    }else if(this.peso < 39.9){
      print("Obesidad grado II");
      print("Riesgo muy alto");
    }else{
      print("Obesidad grado III");
      print("Riesgo extremadamente alto");
    }
  }
}
void main(List<String> args) {
  // S e crea un objeto
  var persona1 = Persona("Alejandriño", "Junior", 19, 1);
  persona1.mostrarNombreCompleto();
  persona1.esMayorEdad();
  persona1.estadoSalud();
  var persona2 = Persona("Geronimo", "Mierdina", 17, 200);
  print("*"*50);
  persona2.mostrarNombreCompleto();
  persona2.esMayorEdad();
  persona2.estadoSalud();
  var persona3 = Persona("Stiven", "Gonzalez", 80, 29);
  print("*"*50);
  persona3.mostrarNombreCompleto();
  persona3.esMayorEdad();
  persona3.estadoSalud();
}