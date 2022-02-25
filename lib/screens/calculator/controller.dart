import 'package:flutter/material.dart';

class CalculatorController{
  TextEditingController num1 =TextEditingController();
  TextEditingController num2 =TextEditingController();
  TextEditingController op = TextEditingController();
  double result= 0 ;

  void calc(){
    double x =double.parse(num1.text);
    double y =double.parse(num2.text);
    String o =op.text ;

    switch(o){
      case "+" :result =x+y;
      break;
      case "*" :result =x*y;
      break;
      case "-" :result =x-y;
       break;
      case "/" :result =x/y;
      break;
      default:

    }
    print(result);

  }

}
