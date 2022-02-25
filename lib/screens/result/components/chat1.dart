import 'package:flutter/material.dart';

class Chat1 extends StatelessWidget {
  final name;
  final text;

  const Chat1({ this.name='Total Questions', this.text='9'}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(right: 10,top: 15,left: 5),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Text(name,style: TextStyle(color: Colors.grey),),
        trailing: Text(text,style: TextStyle(color: Colors.red),),
      ),
    );
  }
}
