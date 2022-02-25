import 'package:flutter/material.dart';
import 'package:myapp2/screens/telegram/controller.dart';

class ChatItems extends StatelessWidget {
  String? names1;
  String? names3;
  ChatItems(String names1,String names3){
  this.names1 = names1;
  this.names3 = names3;
  }

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      leading: CircleAvatar(radius: 25,backgroundImage: AssetImage('assets/images/eslam.jpg'),),
      title: Text('$names1',style: TextStyle(fontWeight: FontWeight.bold),),
    subtitle: Text('$names3'),
    trailing: Text('8:30',style: TextStyle(fontWeight: FontWeight.bold),),
    ) ;

  }
}







