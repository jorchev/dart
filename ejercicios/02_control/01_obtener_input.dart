import 'dart:io';
main(){

  stdout.writeln('¿Cuál es tu nombre?');

  String? nombre = stdin.readLineSync();

  stdout.writeln('Tu nombre es: $nombre');

}