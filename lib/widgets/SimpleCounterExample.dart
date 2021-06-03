import 'package:flutter/material.dart';
// extend state
// extend StatefulWidget

class SimpleCounter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<SimpleCounter>{
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Text('counter $counter'),
          FloatingActionButton(onPressed: onCounterClick,
         child: Icon (Icons.add), )
    ]
    );

  }

  void onCounterClick(){
    setState(() {
      counter++;
    });
  }

}