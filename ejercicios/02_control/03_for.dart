import 'dart:io';
main() {

  stdout.writeln('¿Qué tabla de multiplicar deseas?');
  int tabla = int.parse(stdin.readLineSync() ?? '0');

  for(int i = 1; i <= 10; i++){
    stdout.writeln('$tabla * $i = ${ tabla * i }');
  }

  /*
    Dato de entrada: La base de la tabla de multiplicar
    (este dato de ser capturado por el usuario)
    ej: 2     =====>     2, 4, 6, 8, 10

    La salida esperada sería

    2 * 1 = 2
    2 * 2 = 4
    2 * 3 = 6
    ...
    2 * 10 = 20

  */

}