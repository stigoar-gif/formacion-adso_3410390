import 'dart:io';
//3. Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, cuantos positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos
void main() {
  List<int> numeros = [];

  int ceros = 0;
  int positivos = 0;
  int negativos = 0;

  int sumaPositivos = 0;
  int sumaNegativos = 0;
  int sumaCeros = 0;

  for (int i = 0; i < 15; i++) {
    print("Ingrese un número:");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);

    if (num == 0) {
      ceros++;
      sumaCeros += num;
    } else if (num > 0) {
      positivos++;
      sumaPositivos += num;
    } else {
      negativos++;
      sumaNegativos += num;
    }
  }

  print("Ceros: $ceros");
  print("Positivos: $positivos");
  print("Negativos: $negativos");

  print("Suma de positivos: $sumaPositivos");
  print("Suma de negativos: $sumaNegativos");
  print("Suma de ceros: $sumaCeros");
}