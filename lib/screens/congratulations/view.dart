import 'package:flutter/material.dart';
class CongratulationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            ListTile(leading: Icon(Icons.arrow_back,color: Colors.black,size: 25,),),
            SizedBox(height: 30,),
            Image.asset('assets/images/box.jpg'),
            Text('Congratulations!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('You successfully  made a payment\n              enjoy our service', style: TextStyle(color: Colors.grey),),
            SizedBox(height: 55,),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Go home page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
