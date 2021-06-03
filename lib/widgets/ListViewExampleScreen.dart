import 'package:flutter/material.dart';
import 'package:flutter_basics_mon/widgets/NewsCategoryItem.dart';

class ListViewExampleScreen extends StatelessWidget{

  List<Category> items = [
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),

    Category('Cars','assets/images/cars.jpg'),
    Category('health','assets/images/health.png'),
  ];
  
  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemBuilder:
        (BuildContext buildContext,int index){
      return NewsCategoryItem(items[index].name, items[index].imagePath);
    },
      itemCount: items.length,
    );
  }
}

class Category{// data class - model class
  String name;
  String imagePath;
  Category(this.name,this.imagePath);
}