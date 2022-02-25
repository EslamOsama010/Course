import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  final text;

  Text1({this.text = 'Categories'});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
