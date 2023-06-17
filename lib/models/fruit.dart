class Fruit {
  String name;
  String url;
  double price;

  Fruit({
    required this.name,
    required this.url,
    required this.price,
  });
  @override
  String toString() {
    return "$name-$price";
  }
}
