class Persona {

  // Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Hola soy una propiedad privada';

  // Gets y sets
  // String get bio {
  //   return _bio.toUpperCase();
  // }
  String get bio => _bio.toUpperCase();

  // set bio( String texto ){ // siempre retorna un "void" implicito
  //   _bio = texto;
  // }
  set bio( String texto ) => _bio = texto;

  // Constructores


  // Métodos
  @override
  String toString() => 'Nombre: $nombre, Edad: $edad, Bio $_bio';
  

}