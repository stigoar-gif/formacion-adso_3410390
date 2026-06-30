import 'dart:io';
void main() {
  double saldo = 100000;
  int opcion;

  print("========== APP BANCARIA ==========");

  print("Usuario:");
  // ignore: unused_local_variable
  String usuario = stdin.readLineSync()!;

  print("Contraseña (4 dígitos):");
  // ignore: unused_local_variable
  String contrasena = stdin.readLineSync()!;

  do {
    print("========== MENÚ APP BANCARIA ==========");
    print("1. Consultar saldo");
    print("2. Ingresar fondos");
    print("3. Realizar retiro");
    print("4. Recarga de celular");
    print("5. Transferencia a otra cuenta");
    print("6. Salir");
    print("--------------------------------------");
    stdout.write("Seleccione una opción: ");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        print("Su saldo actual es: ${saldo.toStringAsFixed(2)}");
        break;
      case 2:
        stdout.write("Ingrese el valor a consignar: ");
        double fondos = double.parse(stdin.readLineSync()!);
        if (fondos <= 0) {
          print("No se permiten valores negativos o cero.");
        } else {
          saldo += fondos;
          print("Consignación realizada correctamente.");
          print("Saldo actual: ${saldo.toStringAsFixed(2)}");
        }
        break;
      case 3:
        stdout.write("Ingrese el valor a retirar: ");
        double retiro = double.parse(stdin.readLineSync()!);
        if (retiro <= 0) {
          print("No se permiten valores negativos o cero.");
        } else if (retiro > saldo) {
          print("Fondos insuficientes.");
        } else {
          saldo -= retiro;
          print("Retiro realizado correctamente.");
          print("Saldo actual:${saldo.toStringAsFixed(2)}");
        }
        break;
      case 4:
        stdout.write("Ingrese el valor de la recarga: ");
        double recarga = double.parse(stdin.readLineSync()!);
        if (recarga <= 0) {
          print("No se permiten valores negativos o cero.");
        } else if (recarga > saldo) {
          print("Fondos insuficientes.");
        } else {
          saldo -= recarga;
          print("Recarga realizada correctamente.");
          print("Saldo actual: ${saldo.toStringAsFixed(2)}");
        }
        break;
      case 5:
        stdout.write("Ingrese el número de cuenta destino: ");
        String cuenta = stdin.readLineSync()!;

        stdout.write("Ingrese el valor a transferir: ");
        double transferencia = double.parse(stdin.readLineSync()!);
        if (transferencia <= 0) {
          print("No se permiten valores negativos o cero.");
        } else if (transferencia > saldo) {
          print("Fondos insuficientes.");
        } else {
          saldo -= transferencia;
          print("Transferencia realizada a la cuenta $cuenta.");
          print("Saldo actual: ${saldo.toStringAsFixed(2)}");
        }
        break;
      case 6:
        print("Gracias por utilizar la APP Bancaria.");
        break;
      default:
        print("Opción inválida.");
    }
    if (opcion != 6) {
      print("Presione ENTER para continuar...");
      stdin.readLineSync();
    }
  } while (opcion != 6);
}