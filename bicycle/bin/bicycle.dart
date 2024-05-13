class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
    print('Freno:');
    print(decrement);
  }

  void speedUp(int increment) {
    _speed += increment;
    print('Aceleracion:');
    print(increment);
  }

  @override
  String toString() => 'Bicicleta: $_speed mph ';
}

void main() {
  //Imprime la velocidad Inicial
  print('-----------------');
  var bike = Bicycle(5, 1);
  print(bike);
  print('-----------------');

  //Freno para reducir velocidad
  bike.applyBrake(2);

  print('-----------------');
  //Aceleracion de Bicicleta
  bike.speedUp(3);

  print('-----------------');
}
