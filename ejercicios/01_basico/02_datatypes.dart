main() {

  // ===== Números
  // var a = 10; // declaracion dinamica con var
  int a = 10;
  double b = 5.5;

  int? c = null; // ? puede ser nulo

  int _a = 30;
  double $b = 40;

  double resultado = _a + $b;

  //print( c );
  //print( resultado );

  // ===== String
  String nombre = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = "O'Connor";
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
  Hola mundo!
  ¿Cómo estas?
  $nombreCompleto
  Esto es un string multilinea
  ''';

  print( nombre2 == nombre );
  print( nombre3 );
  print( multilinea );

}