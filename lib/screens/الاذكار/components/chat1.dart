

import 'package:flutter/material.dart';

class Chat1 extends StatelessWidget {
  final text;

   Chat1({ this.text='أذكار الصباح'});

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.all(5),
      child: ListTile(
        leading:TextButton.icon(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 10,), label: Text('أذهب',style: TextStyle(color: Colors.white,fontSize: 10),),),
          trailing: Text(text,style: TextStyle(color: Colors.yellow[100],fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
