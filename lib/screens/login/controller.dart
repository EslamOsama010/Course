import 'package:flutter/material.dart';

class LoginController{
  TextEditingController userNameController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  String result ='';
void sign (){
  String username =userNameController.text;
  String password =passwordController.text;
  if(username=='admin'&&password=='123456789'){
    result = 'Success';
  }else if(username==''&&password==''){
    result = 'enter your info';
  }else{
    result = 'Fail';
  }




}




}

