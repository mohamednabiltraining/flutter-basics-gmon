import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  String buttonText;
  Function onClick;

  CalculatorButton(this.buttonText,this.onClick);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Expanded(
        child: Container(
          margin: EdgeInsets.all(1),
          child: ElevatedButton(onPressed: ()=>{
            onClick(buttonText)// call back
          },
            child: Text(buttonText,
              style:TextStyle(fontSize: 28),
            )
          ),
        ),
      );
  }
}