class Rectangulo {

  // se tuvieron que indicar como late los campos, aqui siempre debe de recibir un dato
  late int base;
  late int altura;
  late int area;
  late String tipo;

  factory Rectangulo(int base, int altura){

    if( base == altura ){
      return Rectangulo.cuadrado(base);
    }else{
      return Rectangulo.rectangulo(base, altura);
    }

  }

  Rectangulo.cuadrado( int base ){

    this.base = base;
    this.altura = base;
    this.area = this.base * this.altura;
    this.tipo = 'Cuadrado';

  }

  Rectangulo.rectangulo( int base, int altura ){

    this.base = base;
    this.altura = altura;
    this.area = this.base * this.altura;
    this.tipo = 'Rectangulo';

  }

  @override
  String toString() {
    return { 'base': base, 'altura': altura, 'area': area, 'tipo': tipo }.toString();
  }

}


void main(List<String> args) {
  
  final figura = new Rectangulo( 13 , 10 );

  print( figura );

}