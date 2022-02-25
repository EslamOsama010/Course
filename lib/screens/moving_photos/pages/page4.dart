import 'package:flutter/material.dart';
class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Profile'),
      ),
      body: Center(child: Text('My Profile',style: TextStyle(fontSize: 30),),),
    );
  }
}
