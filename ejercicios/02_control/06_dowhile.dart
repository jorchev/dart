import 'dart:io';

String continuar = 'y';
int contador = 0;

main(){

  do{

    contador++;
    stdout.writeln('Contador: $contador');

    stdout.writeln('¿Desea continuar? (y/n)');
    continuar =  stdin.readLineSync() ?? 'n';

  }while( continuar == 'y' );

}