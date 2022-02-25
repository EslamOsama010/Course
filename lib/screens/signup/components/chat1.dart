import 'package:flutter/material.dart';

class Chat1 extends StatelessWidget {
  final name ;
  final icon ;

   Chat1({ this.name='Full Name', this.icon=Icons.person});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: ListTile(
          leading: Icon(icon),
          title: Text(name,style: TextStyle(color: Colors.grey[600]),),
        ),
      ),
    );
  }
}
