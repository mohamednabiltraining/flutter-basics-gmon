import 'package:flutter/material.dart';
import 'package:flutter_basics_mon/widgets/NewsCategoryItem.dart';

class GridViewExampleScreen extends StatelessWidget{

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
    // return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1,childAspectRatio: 2),
    //     itemBuilder: (BuildContext cotext,int index){
    //   return NewsCategoryItem(items[index].name, items[index].imagePath);
    //     });

    return GridView.count(crossAxisCount: 2,
    crossAxisSpacing: 4,
    mainAxisSpacing: 10,
    childAspectRatio: 2/1,// aspect = 1
    children: List.generate(items.length, (index) =>
        NewsCategoryItem(items[index].name, items[index].imagePath)
    ),);
  }
}

class Category{// data class - model class
  String name;
  String imagePath;
  Category(this.name,this.imagePath);
}