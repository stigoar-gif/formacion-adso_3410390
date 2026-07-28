/*Consultar el método de ordenación por burbuja y ordenar un arreglo entero de 10 elementos. */
void main(List<String> args) {
  List<int> vectorNums = [1,2,4,6,32,112,400,500,1500];
  // List<int> vectorNums = [1,7,2,9,10,32,12,4,5,15];

  print("Vector original $vectorNums");

  //Ordenamiento método burbuja
  int n = vectorNums.length;
  int pasadas = 0;
  for (var i = 0; i < n-1; i++) {
    bool intercambio = false;
    pasadas ++;
    for (var j = 0; j < n - 1 - i; j++) {
      //Comparar si el elemento actual es mayor al siguiente
      if (vectorNums[j] > vectorNums[j+1]) {
        int temp = vectorNums[j];
        vectorNums[j] = vectorNums[j + 1];
        vectorNums[j + 1] = temp;
        intercambio = true;
      }
    }
    if (intercambio == false) {
      break;
    }
  }
  print("El vector ordenado es $vectorNums");
  print("La cantidad de pasadas fueron $pasadas");
}