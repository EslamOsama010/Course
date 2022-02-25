import 'package:flutter/material.dart';

class Chat4 extends StatelessWidget {
  final images;
  final color;
  final names;

   Chat4({ this.images='assets/images/google-play.png', this.color= Colors.white, this.names='مشاركه التطبيق'}) ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Image.asset(images,height: 40,width: 40,),
            SizedBox(height: 10,),
            Text(names,style: TextStyle(color: color,fontSize: 10),),

          ],
        ),
      ),
    );
  }
}
