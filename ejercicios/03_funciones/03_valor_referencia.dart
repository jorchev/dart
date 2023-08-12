String capitalizar( String texto ){

  texto = texto.toUpperCase();
  return texto;

}

Map<String, String> capitalizarMapa( Map<String, String> mapa ){

  // Romper la referencia
  mapa = { ...mapa };

  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';

  return mapa;
}

void main(List<String> args){

  /**
   * En Dart los objetos siempre son enviados por referencia, y los tipos
   * primitivos incluyendo el String son enviados por valor.
   * 
   * Se puede romper la referencia en dart si se desea crear dos mapas 
   * distintos.
   * 
   */

  String nombre = 'fernando';
  String nombre2 = capitalizar(nombre);

  // print( nombre );
  // print( nombre2 );

  Map<String, String> persona = {
    'nombre':'Tony Stark'
  };

  Map<String, String> persona2 = capitalizarMapa( persona );

  print(persona);
  print(persona2);

}