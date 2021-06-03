import 'package:flutter/material.dart';
import 'package:flutter_basics_mon/widgets/Calculator/CaclulatorButton.dart';
import 'package:flutter_basics_mon/widgets/Calculator/CalculatorResultText.dart';

// X_O GAME

class CalculatorState extends State<CalculatorWidget>{
  String resultTv='';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: CalculatorResultText(resultTv)),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton('7',addDigit),
              CalculatorButton('8',addDigit),
              CalculatorButton('9', addDigit),
              CalculatorButton('+', onOperatorClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton('4', addDigit),
              CalculatorButton('5', addDigit),
              CalculatorButton('6', addDigit),
              CalculatorButton('-', onOperatorClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton('1', addDigit),
              CalculatorButton('2', addDigit),
              CalculatorButton('3', addDigit),
              CalculatorButton('*', onOperatorClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton('.', addDigit),
              CalculatorButton('0', addDigit),
              CalculatorButton('=', onEqualClick),
              CalculatorButton('/', onOperatorClick),
            ],
          ),
        ),
      ],
    );
  }
  void addDigit(String digit){
    setState(() {
      resultTv+=digit;
    });
  }
  String operator='';
  String res='';
  void onOperatorClick(String clickedOperator){

    if(operator.isEmpty){
      res= resultTv;
      this.operator = clickedOperator;
      setState(() {
        resultTv='';
      });
    }else {
      // res is not empty and operator is not empty
      // 1-calculate the new result
      // 2- save the new clicked operator
      res = calculate(res,operator,resultTv);
      this.operator = clickedOperator;
      setState(() {
        resultTv='';
      });
    }

  }
  String calculate(String LHS,String operator,String RHS){
    double n1 = double.parse(LHS);
    double n2 = double.parse(RHS);
    double res = 0.0;
    if(operator=='+'){
      res = n1+n2;
    }else if (operator=='-'){
      res = n1-n2;
    }else if (operator== '*'){
      res = n1*n2;
    }else if (operator=='/'){
      res = n1/n2;
    }

    return res.toString();
  }
  void onEqualClick(String text){
    res = calculate(res,operator,resultTv);

    setState(() {
      resultTv  = res;
      res = '';
      operator='';
    });
  }
}

class CalculatorWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }


}