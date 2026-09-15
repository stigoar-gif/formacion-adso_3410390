import 'dart:io';

class Vehiculo {
  //Atributos
  String _marca;
  String _color;
  int _velocidad;
  double tamanio;

  // Constructor
  Vehiculo(this._marca, this._color, this._velocidad, this.tamanio);

  //SETTERs y GETTERs
  //métodos que me permiten acceder a los atributos privados para modificarlos
  void setMarca(String newMarca) {
    _marca = newMarca; // Se cambia el valor del atributo Marca
  }

  String getMarca() {
    return _marca;
  }

  /**************************************/
  void setColor(String newColor) {
    _color = newColor;
  }

  String getColor() {
    return _color;
  }

  /**************************************/
  void setVelocidad(int newVelocidad) {
    if (newVelocidad < 0) {
      print("Valor de velocidad incorrecto");
    } else {
      _velocidad = newVelocidad;
    }
  }

  int getVelocidad() {
    return _velocidad;
  }

  /************************************* */
  void setTamanio(double newTamanio) {
    tamanio = newTamanio;
  }

  double getTamanio() {
    return tamanio;
  }

  /*****************************************/
  // MÉTODOS ADICIONALES
  void avanzar() {
    print("El carro avanza a una velocidad de $_velocidad");
  }

  void detenerse() {
    _velocidad = 0;
    print("El vehiculo se detuvo");
  }

  void girarIzquierda() {
    print("El vehículo gira a la izquierda con velocidad $_velocidad");
  }

  void girarDerecha() {
    print("El vehículo gira a la derecha con velocidad $_velocidad");
  }

  void mostrarDatos() {
    print("*" * 70);
    print("Marca: $_marca");
    print("Color: $_color");
    print("Velocidad: $_velocidad");
    print("Tamanio: $tamanio");
    print("*" * 70);
  }
}

void main(List<String> args) {
  List<Vehiculo> arrayVehiculos = [];

  int cantVehiculos = 0;
  print("Ingrese la cantidad de vehículos");
  cantVehiculos = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  for (var i = 0; i < cantVehiculos; i++) {
    print("__" * 50);
    print("Datos para el vehículo #${i + 1}");
    print("Ingrese la marca, color, velocidad y tamaño");
    String marcaTxt = stdin.readLineSync() ?? "";
    String colorTxt = stdin.readLineSync() ?? "";
    int velocidadTxt = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    if (velocidadTxt < 0) {
      print("No se pueden velocidades menores a cero");
      velocidadTxt = 0;
    }
    double tamanioTxt = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
    // Creamos un objeto de la clase Vehículo
    Vehiculo carro_objeto = Vehiculo(
      marcaTxt,
      colorTxt,
      velocidadTxt,
      tamanioTxt,
    );
    // Se agrega el objeto al array e Vehículos
    arrayVehiculos.add(carro_objeto);
  }
  for (var i = 0; i < arrayVehiculos.length; i++) {
    print("Marca: ${arrayVehiculos[i].getMarca()}");
    print("Color: ${arrayVehiculos[i].getColor()}");
    print("Velocidad: ${arrayVehiculos[i].getVelocidad()}");
    print("Tamaño: ${arrayVehiculos[i].getTamanio()}");
    arrayVehiculos[i].avanzar();
    //arrayVehiculos[i].mostrarDatos();
    print("*" * 70);
  }
}
