import 'dart:math';

class Rectangulo {
  //dynamic contiene cualquier valor, son utilizados en Dart cambiantes en la ejecucion del programa
  dynamic origin = const Point(0, 0);
  int width;
  int height;

  //Constructor de rectangulo

  Rectangulo(
      {this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x},${origin.y}),width: $width, height:$height';
}

main() {
  print('---------------------------');
  print(Rectangulo(origin: const Point(10, 20), width: 100, height: 200));
  print('---------------------------');
  print(Rectangulo(origin: const Point(10, 10)));
  print('---------------------------');
  print(Rectangulo(width: 200));
  print('---------------------------');
  print(Rectangulo());
  print('---------------------------');
}
