import 'clases/persona.dart';

void main(List<String> args){

  final persona = new Persona( edad: 33, nombre: 'Fernando' );
  final persona2 = new Persona.persona40( 'Javier' );

  // persona..nombre = 'Fernando'
  //        ..edad = 33;
        //  ..bio = "Nació por hay";

  // persona.bio = 'Cambie el valor de bio';

  print( persona.bio );
  print( persona );
  print( persona2 );

}