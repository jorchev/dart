abstract class Vehiculo {

  bool encendido = false;

  encender(){
    encendido = true;
    print('Vehículo encendido');
  }

  apagar(){
    encendido = false;
    print('Vehículo apagado');
  }

  bool revisarMotor();

}

class Carro extends Vehiculo {

  int kilometraje = 0;
  
  @override
  bool revisarMotor() {
    print('Motor OK');
    return true;
  }

}


void main(List<String> args) {
  
  Carro ford = new Carro();

  ford.encender();
  ford.apagar();
  ford.revisarMotor();

}