import 'package:flutter/material.dart';
class Chat2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/images/quran0.png',width: 120,height: 120,),
          Text('قرأني',style: TextStyle(color: Colors.yellow[100],fontWeight: FontWeight.bold,fontSize: 20),),
          Text('Quraani',style: TextStyle(color: Colors.yellow[100],fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
