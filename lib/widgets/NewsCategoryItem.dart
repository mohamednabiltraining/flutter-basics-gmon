
import 'package:flutter/material.dart';

class NewsCategoryItem extends StatelessWidget {
  String title;
  String imagePath;
  NewsCategoryItem(this.title,this.imagePath);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.purple,
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image.asset(this.imagePath,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,),
            Text(this.title,style: TextStyle(
              color: Colors.white,
              backgroundColor: Color.fromARGB(190, 74, 19, 109),
            ),)
          ],
        ),
      );
  }
}
