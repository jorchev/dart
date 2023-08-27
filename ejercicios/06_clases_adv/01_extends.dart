class Vehiculo {

  bool encendido = false;

  encender(){
    encendido = true;
    print('Vehículo encendido');
  }

  apagar(){
    encendido = false;
    print('Vehículo apagado');
  }

}

class Carro extends Vehiculo {

  int kilometraje = 0;

}


void main(List<String> args) {
  
  Carro ford = new Carro();

  ford.encender();
  ford.apagar();

}