import 'package:flutter/material.dart';
class NotConnectedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        elevation: 0,
        title: Center(child: Text('          القبلة',style: TextStyle(color: Colors.yellow[100],fontSize: 20),)),
        actions: [
         TextButton(onPressed: (){}, child:  Icon(Icons.arrow_forward_rounded,color: Colors.yellow[100],size: 20,),)
        ],
      ),
      body: Container(
        color: Colors.green[900],
        width: double.infinity,
        child: Column(
          children: [
               SizedBox(height: 150,),
                Image.asset('assets/images/not.png',color: Colors.white,height: 150,width: 150,),
                SizedBox(height: 40,),
                Text(' الرجاء تمكين خدمه الموقع',style: TextStyle(color: Colors.white,fontSize: 15),),
                SizedBox(height: 25,),
                 InkWell(
                   onTap: (){},
                   child: Container(
                     height: 35,
                     width: 120,
                       color: Colors.white,
                       child: Center(child: Text('اعاده المحاوله',style: TextStyle(color: Colors.black),))),
                 ),

          ],
        ),
      ),
    );
  }
}
