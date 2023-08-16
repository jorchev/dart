import 'dart:async';

void main(List<String> args){

  // Stream de multiples subscripciones
  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen(
    (data) => print('Despegando! $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Mision completa!'),
    cancelOnError: false 
  );

  streamController.stream.listen(
    (data) => print('Despegando Stream 2! $data'),
    onError: (err) => print('Error Stream 2! $err'),
    onDone: () => print('Mision completa Stream 2!'),
    cancelOnError: false 
  );

   streamController.sink.add('Apollo 11');
   streamController.sink.add('Apollo 12');
   streamController.sink.add('Apollo 13');
   streamController.sink.addError('Houston, Tenemos un problema');
   streamController.sink.add('Apollo 14');
   streamController.sink.add('Apollo 15');
   streamController.sink.add('Apollo 16');

   streamController.sink.close();

   print('Fina del main');

}