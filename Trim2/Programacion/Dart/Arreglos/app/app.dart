import 'dart:io';
import 'dart:math';


class Tema {
  String nombre;
  int cupo;
  List<String> asignados = [];

  Tema(this.nombre, this.cupo);
}


List<Tema> temas = [];
List<String> aprendices = [];
bool hayAsignacionGuardada = false;

void main() {
  precargarDatos();
  bool salir = false;

  do {
    print('');
    print('--- MENU PRINCIPAL ---');
    print('1. Gestion de Temas de Exposicion');
    print('2. Gestion de Aprendices');
    print('3. Asignacion Aleatoria');
    print('4. Precargar / Resetear Datos');
    print('5. Salir');
    print('Opcion: ');
    int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (opcion) {
      case 1:
        menuTemas();
        break;
      case 2:
        menuAprendices();
        break;
      case 3:
        menuAsignacion();
        break;
      case 4:
        precargarDatos();
        print('Datos precargados.');
        break;
      case 5:
        salir = true;
        print('Hasta luego!');
        break;
      default:
        print('Opcion no valida.');
    }
  } while (!salir);
}

void precargarDatos() {
  temas.clear();
  aprendices.clear();
  hayAsignacionGuardada = false;

  temas.add(
    Tema('Exposicion 1: Que es la Programacion Orientada a Objetos?', 3),
  );
  temas.add(
    Tema('Exposicion 2: POO vs programacion estructurada, otros paradigmas', 3),
  );
  temas.add(Tema('Exposicion 3: Que es un objeto y que es una clase?', 3));
  temas.add(
    Tema('Exposicion 4: Abstraccion (clases abstractas vs interfaces)', 3),
  );
  temas.add(
    Tema(
      'Exposicion 5: Encapsulamiento (modificadores, constructores, static)',
      3,
    ),
  );
  temas.add(Tema('Exposicion 6: Herencia', 4));
  temas.add(Tema('Exposicion 7: Polimorfismo (overriding vs overloading)', 4));
  temas.add(Tema('Exposicion 8: Diagramas UML y relaciones entre clases', 4));

  aprendices.addAll([
    'Alejandro Rua',
    'Stiven Gonzalez',
    'Miguel Angel Garcia',
    'Leider Serna',
    'Maria Jose Osorio',
    'Mateo Pescador',
    'Mateo Henao',
    'Angie Veronica Carvajal',
    'Juan Jose Bernal',
    'Juan Diego Giraldo',
    'Miguel Angel Cortes',
    'Valeria Murillo',
    'Yulieth Luna',
    'Jean Karlo Velazquez',
    'Camilo Morales',
    'Thomas Toro',
    'Johan Sebastian Zambrano',
    'Susana Castro',
    'Karol Daian Navia',
    'David Ramirez',
    'Santiago Gomez',
    'Camilo Gil',
    'Hector Alejandro Jimenez',
    'Esteban Quiceno',
    'Valeria Arenas',
    'Jeronimo Medina',
    'Juan Jose Lopez',
  ]);
}

void menuTemas() {
  bool volver = false;
  do {
    print('');
    print('--- GESTION DE TEMAS ---');
    print('1. Crear Tema');
    print('2. Mostrar Temas');
    print('3. Editar Tema');
    print('4. Eliminar Tema');
    print('5. Volver');
    print('Opcion: ');
    int op = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (op) {
      case 1:
        print('Nombre del tema: ');
        String nombre = stdin.readLineSync() ?? '';
        print('Cupo (numero de aprendices): ');
        int cupo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

        if (nombre.isNotEmpty && cupo > 0) {
          temas.add(Tema(nombre, cupo));
          print('Tema creado.');
        } else {
          print('Datos invalidos.');
        }
        break;

      case 2:
        print('');
        print('--- LISTA DE TEMAS ---');
        if (temas.isEmpty) {
          print('No hay temas registrados.');
        } else {
          for (int i = 0; i < temas.length; i++) {
            print('${i + 1}. [Cupo: ${temas[i].cupo}] ${temas[i].nombre}');
          }
        }
        break;

      case 3:
        if (temas.isEmpty) {
          print('No hay temas para editar.');
          break;
        }
        for (int i = 0; i < temas.length; i++) {
          print('${i + 1}. ${temas[i].nombre} (Cupo: ${temas[i].cupo})');
        }
        print('Numero de tema a editar: ');
        int idxEditar = (int.tryParse(stdin.readLineSync() ?? '') ?? 0) - 1;

        if (idxEditar >= 0 && idxEditar < temas.length) {
          print('Nuevo nombre (dejar vacio para no cambiar): ');
          String nuevoNombre = stdin.readLineSync() ?? '';
          print('Nuevo cupo (dejar vacio para no cambiar): ');
          String textoCupo = stdin.readLineSync() ?? '';

          if (nuevoNombre.isNotEmpty) temas[idxEditar].nombre = nuevoNombre;
          if (textoCupo.isNotEmpty) {
            int nuevoCupo = int.tryParse(textoCupo) ?? temas[idxEditar].cupo;
            if (nuevoCupo > 0) temas[idxEditar].cupo = nuevoCupo;
          }
          print('Tema actualizado.');
        } else {
          print('Numero no valido.');
        }
        break;

      case 4:
        if (temas.isEmpty) {
          print('No hay temas para eliminar.');
          break;
        }
        for (int i = 0; i < temas.length; i++) {
          print('${i + 1}. ${temas[i].nombre}');
        }
        print('Numero de tema a eliminar: ');
        int idxEliminar = (int.tryParse(stdin.readLineSync() ?? '') ?? 0) - 1;

        if (idxEliminar >= 0 && idxEliminar < temas.length) {
          print('Desea borrar "${temas[idxEliminar].nombre}"? (si/no): ');
          String confirmar = (stdin.readLineSync() ?? '').trim().toLowerCase();
          if (confirmar == 'si') {
            temas.removeAt(idxEliminar);
            print('Tema eliminado.');
          } else {
            print('Eliminacion cancelada.');
          }
        } else {
          print('Numero no valido.');
        }
        break;

      case 5:
        volver = true;
        break;

      default:
        print('Opcion no valida.');
    }
  } while (!volver);
}

void menuAprendices() {
  bool volver = false;
  do {
    print('');
    print('--- GESTION DE APRENDICES ---');
    print('1. Registrar Aprendiz');
    print('2. Mostrar Aprendices');
    print('3. Editar Aprendiz');
    print('4. Eliminar Aprendiz');
    print('5. Volver');
    print('Opcion: ');
    int op = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (op) {
      case 1:
        print('Nombre completo del aprendiz: ');
        String nombre = (stdin.readLineSync() ?? '').trim();
        if (nombre.isNotEmpty) {
          aprendices.add(nombre);
          print('Aprendiz registrado.');
        } else {
          print('El nombre no puede estar vacio.');
        }
        break;

      case 2:
        print('');
        print('--- LISTA DE APRENDICES (${aprendices.length}) ---');
        if (aprendices.isEmpty) {
          print('No hay aprendices registrados.');
        } else {
          for (int i = 0; i < aprendices.length; i++) {
            print('${i + 1}. ${aprendices[i]}');
          }
        }
        break;

      case 3:
        if (aprendices.isEmpty) {
          print('No hay aprendices para editar.');
          break;
        }
        for (int i = 0; i < aprendices.length; i++) {
          print('${i + 1}. ${aprendices[i]}');
        }
        print('Numero del aprendiz a editar: ');
        int idxEditar = (int.tryParse(stdin.readLineSync() ?? '') ?? 0) - 1;

        if (idxEditar >= 0 && idxEditar < aprendices.length) {
          print('Nuevo nombre completo: ');
          String nuevoNombre = (stdin.readLineSync() ?? '').trim();
          if (nuevoNombre.isNotEmpty) {
            aprendices[idxEditar] = nuevoNombre;
            print('Aprendiz actualizado.');
          }
        } else {
          print('Numero no valido.');
        }
        break;

      case 4:
        if (aprendices.isEmpty) {
          print('No hay aprendices para eliminar.');
          break;
        }
        for (int i = 0; i < aprendices.length; i++) {
          print('${i + 1}. ${aprendices[i]}');
        }
        print('Numero del aprendiz a eliminar: ');
        int idxEliminar = (int.tryParse(stdin.readLineSync() ?? '') ?? 0) - 1;

        if (idxEliminar >= 0 && idxEliminar < aprendices.length) {
          print('Desea borrar a "${aprendices[idxEliminar]}"? (si/no): ');
          String confirmar = (stdin.readLineSync() ?? '').trim().toLowerCase();
          if (confirmar == 'si') {
            aprendices.removeAt(idxEliminar);
            print('Aprendiz eliminado.');
          } else {
            print('Eliminacion cancelada.');
          }
        } else {
          print('Numero no valido.');
        }
        break;

      case 5:
        volver = true;
        break;

      default:
        print('Opcion no valida.');
    }
  } while (!volver);
}


void menuAsignacion() {
  bool volver = false;
  do {
    print('');
    print('--- ASIGNACION ALEATORIA ---');
    print('1. Generar Nueva Asignacion');
    print('2. Mostrar Asignacion Guardada');
    print('3. Volver');
    print('Opcion: ');
    int op = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (op) {
      case 1:
        generarAsignacion();
        break;
      case 2:
        mostrarAsignacionGuardada();
        break;
      case 3:
        volver = true;
        break;
      default:
        print('Opcion no valida.');
    }
  } while (!volver);
}


void generarAsignacion() {
  if (temas.isEmpty || aprendices.isEmpty) {
    print('Debe tener temas y aprendices registrados antes de asignar.');
    return;
  }

  int totalCupos = 0;
  for (var t in temas) {
    totalCupos += t.cupo;
  }

  if (totalCupos != aprendices.length) {
    print(
      'La cantidad de aprendices (${aprendices.length}) no coincide con la suma de cupos ($totalCupos).',
    );
    return;
  }

  List<String> mezclados = List.from(aprendices);
  mezclados.shuffle(Random());

  int i = 0;
  for (var tema in temas) {
    tema.asignados.clear();
    for (int j = 0; j < tema.cupo; j++) {
      tema.asignados.add(mezclados[i]);
      i++;
    }
  }

  print('');
  print('--- ASIGNACION GENERADA ---');
  for (var tema in temas) {
    print('');
    print('-> ${tema.nombre}');
    for (var estudiante in tema.asignados) {
      print('   - $estudiante');
    }
  }

  hayAsignacionGuardada = true;
  print('');
  print('Asignacion guardada.');
}


void mostrarAsignacionGuardada() {
  if (!hayAsignacionGuardada) {
    print('Todavia no hay ninguna asignacion guardada.');
    return;
  }

  print('');
  print('--- ASIGNACION GUARDADA ---');
  for (var tema in temas) {
    print('');
    print('-> ${tema.nombre}');
    if (tema.asignados.isEmpty) {
      print('   (sin aprendices asignados)');
    } else {
      for (var estudiante in tema.asignados) {
        print('   - $estudiante');
      }
    }
  }
}