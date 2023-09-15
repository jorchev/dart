void main(List<String> args) {

  final persona = {
    'nombre'   : 'Jorge',
    'apellido' : 'Vega',
    'edad'     : 37
  };

  final direccion = {
    'ciudad' : 'Ottawa',
    'pais'   : 'Canadá'
  };

  print('Persona: $persona');
  print('Length: ${ persona.length }');
  print('keys: ${ persona.keys }');
  print('values: ${ persona.values }');


  persona.addAll(direccion);
  print('AddAll: $persona');

  persona.remove('pais');
  print('remove: $persona');

  // persona.removeWhere((key, value) {

  //   if( key != 'nombre'){
  //     return true;
  //   }else{
  //     return false;
  //   }

  // });

  // Versión resumida del removeWhere
  persona.removeWhere( (key, value) => (key != 'nombre') ? true : false );
  print('removeWhere: $persona');




}