/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';
import 'dart:math';

main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  
  int cont = 1;
  String resp = 'no';

  do{
    int salario = Random().nextInt(950) + 1000;
    cargarUsuario(cont, salario);
    cont++;

    escribir('\n¿Deseas capturar otro usuario? si/no');
    resp = leer();

  }while(resp == 'si');
  

}

void escribir ( dato ){
  stdout.writeln( dato );
}

String leer () => stdin.readLineSync() ?? '';

void cargarUsuario(int num, int salario){

 escribir('=========== Usuario $num =============');


  escribir('¿Cúal es su nombre?');
  String nombre = leer();

  escribir('¿Qué edad tienes?');
  String edad = leer();
  
  escribir('¿En qué país naciste?');
  String pais = leer();
  

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };

  escribir('Usuario $num sin deducciones');
  escribir( usuario );

  //double salario     = (Random().nextDouble() * 950.00 ) + 1000.00;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario']     = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  escribir(usuario);

}