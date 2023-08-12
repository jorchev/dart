void saludar( String mensaje, [ String nombre = '<insertar nombre>', int edad = 20 ] ){

  print( '$mensaje $nombre - $edad' );

}

void saludar2(String mensaje, { required String nombre, int veces = 10 }){
  print('Saludar2: $mensaje $nombre - $veces');
}

void main(List<String> args){

  saludar('Hola', 'Jorge', 37);
  saludar2('Saludos', veces: 20, nombre: 'Fernando');

}