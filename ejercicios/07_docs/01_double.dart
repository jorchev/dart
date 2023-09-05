

void main(List<String> args) {
  
  double numero = 3.1416;
  double infinito = double.infinity;

  print('Firma: ${ numero.sign } :: $numero');

  print('Es finito: ${ numero.isFinite } :: $numero');
  print('Es finito: ${ infinito.isFinite } :: $infinito');

  print('abs: ${ numero.abs() } :: $numero');
  print('ceil: ${ numero.ceil() } :: $numero');

  // print('ceil: ${ infinito.ceil() } :: $numero');

  print('ceilToDouble: ${ numero.ceilToDouble() } :: $numero');
  print('round: ${ numero.round() } :: $numero');
  print('round: ${ numero.roundToDouble() } :: $numero');

  print('clamp: ${ numero.clamp(1, 3) } :: $numero');

}
  