import 'clases/persona.dart';

void main(List<String> args){

  final persona = new Persona();

  persona..nombre = 'Fernando'
         ..edad = 33;
        //  ..bio = "Nació por hay";

  persona.bio = 'Cambie el valor de bio';

  print( persona.bio );

}