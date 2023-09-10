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
  print('NombreMapa: ${ listaNombres[1] }');


}