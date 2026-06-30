import 'dart:io';
void main() {
  for (int i = 1; i <= 10; i++) {
    stdout.write("Ingrese un número: ");
    int num = int.parse(stdin.readLineSync()!);

    if (num > 0) {
      print(num);
    }
  }
}