import 'package:flutter/material.dart';
import 'package:flutter_basics_mon/widgets/Calculator/Calculator.dart';
import 'package:flutter_basics_mon/widgets/Calculator/Practice.dart';
import 'package:flutter_basics_mon/widgets/GridViewExampleScreen.dart';
import 'package:flutter_basics_mon/widgets/ListViewExampleScreen.dart';
import 'package:flutter_basics_mon/widgets/NewsCategoryItem.dart';
import 'package:flutter_basics_mon/widgets/SimpleCounterExample.dart';
import 'package:flutter_basics_mon/widgets/TitleTextWidget.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: 'My Application',
    );
  }

}
