void main() {
  int numero = 100;
  int suma = 0;

  do {
    suma += numero;
    numero -= 2;
  } while (numero >= 0);

  print("La suma es: $suma");
}