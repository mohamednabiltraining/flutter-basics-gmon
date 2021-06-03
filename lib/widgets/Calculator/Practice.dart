import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyScreenState();
  }
}
class MyScreenState extends State<MyScreen>{
  String text='';
  List<String> names=[];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       TextField(onChanged:onTextChangeListener,
         controller: TextEditingController(text: text),

       ),
        ElevatedButton(onPressed:()=>
            onButtonPressed(context),
            child: Text('Add Text')
        ),
        Expanded(
          child: ListView.builder(itemCount:names.length,
              itemBuilder: (BuildContext context,int index)=>
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(names[index],textAlign: TextAlign.center
                    ,style: TextStyle(),),
                  )

          ),
        )
      ],

    );
  }

  void onButtonPressed(BuildContext context){
  showCustomDialog(context);
    Navigator.pushNamed(context, '',arguments: {
      'name':'Mohamed'
    });
    var data = ModalRoute.of(context)
        .settings.arguments as Map<String,String>;
    print(data['firstName']);
  }
  void showCustomDialog(BuildContext context){
    String textToShow = text;
    setState(() {
      names.add(textToShow);
      text='';
    });
    showDialog(context:context , builder:(buildContext)=>
        AlertDialog(title: Text('Alert'),content:Text(textToShow) ,)
    );


  }
  void onTextChangeListener(String newText){
    text = newText;
  }
}
