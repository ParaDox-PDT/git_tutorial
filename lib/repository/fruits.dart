import 'package:flutter/services.dart';
import 'package:git_tutorial/utils/icons.dart';

import '../models/fruit.dart';

class FruitRepository {
  static List<Fruit> data = [
    Fruit(name: 'Mango', url: IconsApp.mango, price: 1.8),
    Fruit(name: 'Grape', url: IconsApp.grape, price: 2.1),
    Fruit(name: 'Strawberry', url: IconsApp.strawberry, price: 2.5),
    Fruit(name: 'Avacado', url: IconsApp.avacado, price: 1.9),
    Fruit(name: 'Orange', url: IconsApp.orange, price: 2.2),
    Fruit(name: 'Bread', url: IconsApp.bread, price: 1.2),
  ];

  static searchByName(String name) {
    var result = data
        .where((element) =>
            element.name.toLowerCase().contains(name.toLowerCase()))
        .toList();
    return sortByPrice();
  }

  static sortByPrice() {
    var newData = data;
    for (int i = 0; i < newData.length; i++) {
      for (int j = 0; j < newData.length - i - 1; j++) {
        if (newData[j].price > newData[j + 1].price) {
          var temp = newData[j];
          newData[j] = newData[j + 1];
          newData[j + 1] = temp;
        }
      }
    }
    return newData;
  }
}
