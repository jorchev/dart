
void main(List<String> args) {
  
  String nombre = 'Fernando';
  String apellido = 'Herrera';

  String nombreCompleto = '$nombre' ' ' 'Herrera';

  print('String: $nombreCompleto');

  print('Length: ${ nombreCompleto.length }');
  print('Contains F: ${ nombreCompleto.contains('F', 0) }');
  print('EndsWith a: ${ nombreCompleto.endsWith('a') }');

  print('PadLeft: ${ nombreCompleto.padLeft(20,'...') }');
  print('PadRight: ${ nombreCompleto.padRight(20,'...') }');

}