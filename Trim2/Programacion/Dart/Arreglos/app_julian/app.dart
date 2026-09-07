// Estructura de Datos para App - Gestión aleatoria Exposiciones
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

List<String> temas = [];
List<int> cupos = [];
List<String> estudiantes = [];
List<String> aleatorioEstud = [];
List<List<String>> asignaciones = [];

void main(List<String> arguments) {
  menuPrincipal();
}

void menuPrincipal() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Gestión Temas y cupos");
    print("2. Gestión Estudiantes");
    print("3. Generar exposiciones aleatorias");
    print("4. Visualizar temas y estudiantes asignados");
    print("5. Precargar datos de prueba");
    print("6. Salir");
    print("*" * 50);
    print("Digite la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        gestionTemasCupos();
        break;
      case 2:
        gestionEstudiantes();
        break;
      case 3:
        generarExposiciones();
        break;
      case 4:
        visualizarAsignaciones();
        break;
      case 5:
        precargarDatosPrueba();
        break;
      case 6:
        print("Has salido de la aplicación!");
        break;
      default:
        print("Opción incorrecta!");
    }
  } while (opcion != 6);
}

void gestionTemasCupos() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un tema");
    print("2. Listar temas");
    print("3. Editar un tema");
    print("4. Eliminar un tema");
    print("5. Salir");
    print("*" * 50);
    print("Ingrese la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearTema();
        break;
      case 2:
        listarTemas();
        break;
      case 3:
        editarTema();
        break;
      case 4:
        eliminarTema();
        break;
      case 5:
        print("Salir del menú de temas!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void gestionEstudiantes() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un estudiante");
    print("2. Listar estudiantes");
    print("3. Editar un estudiante");
    print("4. Eliminar un estudiante");
    print("5. Salir");
    print("*" * 50);
    print("Ingrese la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearEstudiantes();
        break;
      case 2:
        listarEstudiantes();
        break;
      case 3:
        editarEstudiantes();
        break;
      case 4:
        eliminarEstudiantes();
        break;
      case 5:
        print("Salir del menú de estudiantes!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void generarExposiciones() {
  print("-------- GENERANDO EXPOSICIONES ALEATORIAS --------");
  if (temas.isEmpty) {
    print("no hay temas registrados");
    return;
  }
  if (estudiantes.isEmpty) {
    print("no hay estudiantes");
    return;
  }
  int totalEstudiantes = estudiantes.length;
  int totalCupos = 0;
  for (var element in cupos) {
    //SE RECORRE EL VECTOR DE CUPOS PARA SABER EL TOTAL
    totalCupos += element;
  }
  print("Total estudiantes: $totalEstudiantes");
  print("Total cupos: $totalCupos");

  if (totalCupos != totalEstudiantes) {
    int diferencia = 0;
    print("No se puede realizar la asignación");
    if (totalEstudiantes > totalCupos) {
      diferencia = totalEstudiantes - totalCupos;
      print("Faltan $diferencia cupos por asignar");
    } else {
      diferencia = totalCupos - totalEstudiantes;
      print("Faltan $diferencia estudiantes por asignar");
    }
    return;
  }
  //Se crea una copia del vector Estudiantes
  aleatorioEstud = List.from(estudiantes);
  //Mezclar aleatoriamente el vector
  aleatorioEstud.shuffle(Random());
  asignaciones = [];
  int puntero = 0;
  for (var i = 0; i < temas.length; i++) {
    int cantidad = cupos[i];
    List<String> grupoAsignado = [];
    for (var i = 0; i < cantidad; i++) {
      grupoAsignado.add(aleatorioEstud[puntero]);
      puntero++;
    }
    asignaciones.add(grupoAsignado);
  }
  //Se llama al metodo para visualizar las asignaciones
  visualizarAsignaciones();
}

void visualizarAsignaciones() {
  print("---------------ASIGNACION DE EXPOSICIONES-----------------");
  if (asignaciones.isEmpty) {
    print("No se han hecho asifgnaciones para las exposiciones");
    return;
  }
  print("*" * 50);
  for (var i = 0; i < asignaciones.length; i++) {
    print("tema:${temas[i]}");
    print("*" * 50);
    print("Estudiantes Asignados");
    for (var j = 0; j < asignaciones[i].length; j++) {
      print("$asignaciones[i][j]");
    }
    print("-" * 50);
  }
}

void precargarDatosPrueba() {
   temas = ["Tema 1, Tema 2, Tema3, Tema4, Tema5 "];
   cupos = [];
  estudiantes = [];
}

// Funciones para TEMAS
void crearTema() {
  String tema = "";
  int cupo = 0;
  print("Ingrese el nuevo tema");
  tema = stdin.readLineSync() ?? '';
  print("Ingrese la cantidad de personas para el nuevo tema: $tema");
  cupo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  temas.add(tema); // Se añade el tema al vector de TEMAS
  cupos.add(cupo); // Se añade el cupo al vector de CUPOS
}

void listarTemas() {
  print("Listado de Temas");
  if (temas.isEmpty) {
    print("No existen temas");
    return;
  }
  print("*" * 50);
  for (var i = 0; i < temas.length; i++) {
    print("${temas[i]} - Cupos: ${cupos[i]}");
  }
  print("*" * 50);
}

void editarTema() {
  listarTemas();
  print("cual tema requiere editar?");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (opcion == null || opcion < 1 || opcion > temas.length) {
    print("El tema a editar es invalido");
    return;
  }
  int indice = opcion - 1;
  print(
    "Digite el nuevo nombre para el tema ${temas[indice]}, solo presiona enter si desea que continue el mismo nombre ",
  );
  String nuevoTema = stdin.readLineSync() ?? '';
  if (nuevoTema != null && nuevoTema.isNotEmpty) {
    temas[indice] = nuevoTema; //SE REMPLAZA EL NOMBRE DEL TEMA
  }

  print("Digite el nuevo cupo del tema: ${temas[indice]}");
  int newCupo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (newCupo > 0) {
    cupos[indice] = newCupo;
  }
}

void eliminarTema() {
  listarTemas();
  if (temas.isEmpty) return; // SI NO HAY TEMAS
  print("Seleccione el tema a eliminar");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (opcion < 1 || opcion > temas.length) {
    print("Tema incorrecto");
    return;
  }
  int indice = opcion - 1;
  temas.removeAt(indice); //SE ELIMINA EL TEMA REQUERIDO
  cupos.removeAt(indice); //SE ELIMINA EL CUPO CORRESPONDIENTE
  print("El tema ha sido eliminado exitosamente");
}

//Funciones para ESTUDIANTES

void crearEstudiantes() {
  String estudiante = "";
  print("Ingrese el nuevo estudiante");
  estudiante = stdin.readLineSync() ?? "";
  estudiantes.add(estudiante); //Se añade estudiante al vector ESTUDIANTES
}

void listarEstudiantes() {
  print("Listado de estudiantes");
  if (estudiantes.isEmpty) {
    print("No existen estudiantes");
    return;
  }
  print("*" * 50);
  for (var i = 0; i < estudiantes.length; i++) {
    print("${[i + 1]}  ${estudiantes[i]}");
  }
  print("*" * 50);
}

void editarEstudiantes() {
  listarEstudiantes();
  print("cual Estudiante requiere editar?");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (opcion == null || opcion < 1 || opcion > estudiantes.length) {
    print("El Estudiante a editar es invalido");
    return;
  }
  int indice = opcion - 1;
  print(
    "Digite el nuevo nombre para el Estudiante ${estudiantes[indice]}, solo presiona enter si desea que continue el mismo nombre ",
  );
  String nuevoEstudiante = stdin.readLineSync() ?? '';
  if (nuevoEstudiante != null && nuevoEstudiante.isNotEmpty) {
    temas[indice] = nuevoEstudiante; //SE REMPLAZA EL NOMBRE DEL TEMA
  }

  print("El estudiante fue editado con éxito");
}

void eliminarEstudiantes() {
  listarEstudiantes();
  if (estudiantes.isEmpty) return; // SI NO HAY TEMAS
  print("Seleccione el estudiante a eliminar");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (opcion < 1 || opcion > estudiantes.length) {
    print("Estudiante incorrecto");
    return;
  }
  int indice = opcion - 1;
  estudiantes.removeAt(indice); //SE ELIMINA EL ESTUDIANTE REQUERIDO
  print("El estudiante ha sido eliminado exitosamente");
}
