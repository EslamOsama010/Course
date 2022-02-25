import 'package:flutter/material.dart';
class Chat2 extends StatelessWidget {
  final text;
  final color;
  final double width;

  const Chat2({ this.text='Goto Home', this.color=Colors.redAccent, this.width=90,}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width:width,
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(child: Text(text,style: TextStyle(color: Colors.white),),onPressed: (){},),


    );
  }
}
