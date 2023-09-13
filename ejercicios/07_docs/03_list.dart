void main(List<String> args) {
  
  List<int> lista = [1,2,3,4,5];
  List<int>? lista2;
  List<int> lista3 = [3,1,2,15,-10];
  List<String> nombres = ['Tony','Peter'];
  
  print('Length: ${ lista.length }');
  print('First: ${ lista[0] }');
  print('First: ${ lista.first }');
  print('Last: ${ lista.last }');

  print('Empty: ${ lista.isEmpty }');
  print('Empty?: ${ lista2 == null }');
  
  print('asMap: ${ lista.asMap() }');
  
  Map listaMapa = lista.asMap();
  print('ListaMapa: ${ listaMapa[4] }');

  Map listaNombres = nombres.asMap();
  print('NombreMapa: ${ listaNombres }');
  print('NombreMapa: ${ listaNombres[1] }');

  print('indexOf: ${ nombres.indexOf('Peter') }');

  // int mayor3 = lista.indexWhere((numero){

  //   if(numero > 3){
  //     return true;
  //   }else{
  //     return false;
  //   }

  // });

  int mayor3 = lista.indexWhere( (numero) => ( numero>3 ) ? true : false );

  print('Indexwhere mayor a 3: ${ mayor3 }');

  print('Remove: ${ nombres.remove( 'Tony' ) }');
  print( nombres );

  lista.shuffle();
  print('Shuffle: $lista');


  lista3.sort();
  print('Sort: $lista3');
  print('Reversed: ${ lista3.reversed.toList() }');

  nombres.forEach((nombre) {
    nombre = nombre.toUpperCase();
    print(nombre);
   });

   print('Listado: $nombres');

  final newList = nombres.map((nombre) => nombre.toUpperCase()).toList();
  print('newList: ${ newList }');

}