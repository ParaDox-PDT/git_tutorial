import 'package:git_tutorial/utils/icons.dart';

import '../models/fruit.dart';

class FruitRepository {
  static List<Fruit> data = [
    Fruit(name: 'Mango', url: IconsApp.mango, price: 1.8),
    Fruit(name: 'Grape', url: IconsApp.grape, price: 2.1),
    Fruit(name: 'Strawberry', url: IconsApp.strawberry, price: 2.5),
    Fruit(name: 'Avacado', url: IconsApp.avacado, price: 1.2),
    Fruit(name: 'Orange', url: IconsApp.orange, price: 1.2),
    Fruit(name: 'Bread', url: IconsApp.bread, price: 1.2),
  ];
}
