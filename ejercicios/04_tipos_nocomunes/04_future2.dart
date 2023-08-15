import 'dart:io';

void main(List<String> args){

  File file = new File( Directory.current.path + '\\assets\\personas.txt');

  // Future<String> f = file.readAsString();
  // f.then( (data) => print(data) );
  // f.then( print );

  String f = file.readAsStringSync();
  print( f );

  print("Fin del main");
}