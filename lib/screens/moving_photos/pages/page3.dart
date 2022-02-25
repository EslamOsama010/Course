import 'package:flutter/material.dart';
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Cart'),
      ),
      body: Center(child: Text('My Cart',style: TextStyle(fontSize: 30),),),
    );
  }
}
