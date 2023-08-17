void main(List<String> args){

  // final persona = {
  //   'nombre' : 'Fernando',
  //   'edad'   : 33
  // };

  // print( persona );

  // Persona persona = new Persona();
  final persona = new Persona();

  persona.nombre = 'Fernando';
  persona.edad = 33;
  persona.bio = "Nació por hay";

  print( persona.toString() );

}

class Persona {

  // Campos o propiedades
  String? nombre;
  int? edad;
  String? bio;

  // Gets y sets


  // Constructores


  // Métodos
  @override
  String toString() => 'Nombre: $nombre, Edad: $edad, Bio $bio';
  

}