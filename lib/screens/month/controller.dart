import 'package:flutter/material.dart';
class MonthController{
  TextEditingController numofmonth =TextEditingController();
    String result=''  ;
  void mon(){
    String x =numofmonth.text;
switch(x){
  case '1' : result='يناير';
  break;
  case '2' : result='فبراير';
  break;
  case '3': result='مارس';
  break;
  case '4' : result='ابريل';
  break;
  case '5' : result='مايو';
  break;
  case '6' : result='يونيو';
  break;
  case '7' : result='يوليو';
  break;
  case '8' : result='اغسطس';
  break;
  case '9' : result='سبتمبر';
  break;
  case '10' : result='اكتوبر';
  break;
  case '11' : result='نوفمبر';
  break;
  case '12' : result='ديسمبر';
  break;
  default: result='الشهور 12 ياغبي ';
print(result);
}
  }

}