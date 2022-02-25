import 'package:flutter/material.dart';

class Chat1 extends StatelessWidget {
final image;
final name;
   Chat1({ this.image='assets/images/quraan.png', this.name='قراءه القرأن'}) ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.green[800]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(image,width: 50,height: 50,),
            Text(name,style: TextStyle(color: Colors.yellow[100],fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            TextButton.icon(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 10,), label: Text('أذهب',style: TextStyle(color: Colors.white,fontSize: 10),),),
          ],
        ),
      ),
    );
  }
}
