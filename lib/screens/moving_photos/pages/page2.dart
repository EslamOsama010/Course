import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Gifts'),
      ),
      body: Center(child: Text('My Gifts',style: TextStyle(fontSize: 30),),),
    );
  }
}
