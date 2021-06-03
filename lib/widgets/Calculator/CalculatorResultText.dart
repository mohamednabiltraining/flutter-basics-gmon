import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorResultText extends StatelessWidget{
  String text;
  CalculatorResultText(this.text);
  @override
  Widget build(BuildContext context) {
   return Text(text,textAlign:TextAlign.start,style: TextStyle(
     fontSize: 32,
   ),);
  }

}