import 'package:flutter/material.dart';

class Chat1 extends StatelessWidget {
  final  text;

  const Chat1({ this.text='Change Password'});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(text,style: TextStyle(fontSize: 15),),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,),
    );
  }
}
