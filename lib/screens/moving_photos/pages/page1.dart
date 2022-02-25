import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Shop'),
      ),
      body: Center(child: Text('My Shop',style: TextStyle(fontSize: 30),),),
    );
  }
}
