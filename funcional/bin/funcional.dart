String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];

  //Ejemplo #1

  /*for (var length in values) {
    print(scream(length));
  }*/

//Ejemplo #2

  //values.map(scream).forEach(print);

  //Ejemplo #3

  values.skip(1).take(3).map(scream).forEach(print);
}
