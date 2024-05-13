import 'dart:math';

/*abstract class Shape {
  num get area;
}*/

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Cant\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  @override
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle {
  @override
  late num area;
  @override
  late num radius;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  @override
  num get area => pow(side, 2);
}

/*Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}*/

main() {
  //Ejemplo 1 de Fabrica

  /*final circulo = Circle(2);
  final cuadrado = Square(2);*/

  //Ejemplo 2 de Fabrica

//Con excepciones
  /*final circulo = shapeFactory('circle');
  final cuadrado = shapeFactory('cuadrado');*/

  // Sin excepciones
  /* final circulo = shapeFactory('circle');
  final cuadrado = shapeFactory('square');*/

  //Ejemplo 3 de Fabrica

  final circle = Shape('circle');
  final square = Shape('square');
  print('---------------------');
  print('Resultados');
  print('---------------------');
  print(circle.area);
  print(square.area);
  print('---------------------');
}
