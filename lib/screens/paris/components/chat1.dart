import 'package:flutter/material.dart';

import '../controller.dart';

class Chat1 extends StatelessWidget {
  final img;
  final name;
  final text;
    final controller = ParisController();
   Chat1({ this.img, this.name, this.text});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Image.asset('assets/images/$img',height: 30,width: 30,),
            SizedBox(height: 15,),
            Text(name,style: TextStyle(color: Colors.grey,fontSize: 10),),
            SizedBox(height: 5,),
            Text(text,style: TextStyle(color: Colors.black,fontSize: 17),),
          ],
        ),
      ),
    );
  }
}
