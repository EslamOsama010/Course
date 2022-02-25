import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors:[
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.orange,
                ]
            ),
          ),
          child: Column(
            children: [
              ListTile(leading: Icon(Icons.arrow_back,color: Colors.white,)),
              SizedBox(height: 220,),
              Text('MyOrder',style: TextStyle(color: Colors.white,fontSize: 75,fontWeight: FontWeight.normal),),

            ],
          ),
        ),
      ),
    );
  }
}
