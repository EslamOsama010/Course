// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/screens/lemon/controller.dart';
class LemonScreen extends StatefulWidget {
  @override
  _LemonScreenState createState() => _LemonScreenState();
}

class _LemonScreenState extends State<LemonScreen> {
final controller = LemonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child:   Container(
         color: Colors.green[700],
        child: Column(
         children: [
            Container(
          decoration: BoxDecoration(
            color: Colors.amber[200],
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),
            ),

          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              ListTile(
                title: Text('Fruits',style: TextStyle(color: Colors.brown,fontSize: 25,fontWeight: FontWeight.bold),),
                trailing: InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.circular(10),
                    ),
                   child:Icon(Icons.lock,color: Colors.white,),
                  ),
                ),
                leading: Icon(Icons.arrow_back,color: Colors.brown,),
              ),
              Container(
                // margin: const EdgeInsets.all(30),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  image: DecorationImage(fit: BoxFit.contain, image: AssetImage('assets/images/lemon.jpg')),
                ),
              ),
              ListTile(
                  title: Text.rich(TextSpan(
                    children: [
                      TextSpan(text: 'Mexican\n',style: TextStyle(color: Colors.black,fontSize: 35)),
                      TextSpan(text:'Lemon',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold) ),
                    ]
                  )),
                  subtitle: Text('Fresh,ready to eat\.',style: TextStyle(fontSize: 12)),
                  trailing:Text.rich(TextSpan(
                    children: [
                      TextSpan(text:'\$1.5',style: TextStyle(color: Colors.green,fontSize: 30) ),
                       WidgetSpan(child: Transform.translate(
                         offset: const Offset(2, -15),
                           child: Text( '/kilo',style: TextStyle(color: Colors.green,fontSize: 10)))),
                    ]
                  )),
              ),
              SizedBox(height: 25,),
            ],
          ),
        ),
        Expanded(
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green[700],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Row(
            children: [
              Spacer(),
              Container(
                height: 200,
                width: 60,
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Column(
                  children: [
                    Spacer(),
                    FloatingActionButton(backgroundColor: Colors.grey[350],mini: true,onPressed: (){ controller.plusNum();
                                                        setState(() {});},child: Icon(Icons.add,color: Colors.black,),),
                    Spacer(),
                    Text.rich(TextSpan(
                      children: [
                        TextSpan(text:'\t${controller.NumOfKilos}\n',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black), ),
                        TextSpan(text: 'kilo',style: TextStyle(fontSize: 10)),
                      ]
                    )),
                    Spacer(),
                    FloatingActionButton(backgroundColor: Colors.grey[350],mini: true,onPressed: (){ controller.mainceNum();
                    setState(() {});},child: Icon(Icons.remove,color: Colors.black,),),
                    Spacer(),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 200,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)
                ),
                margin: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Spacer(),
                    // SizedBox(height: 18,),
                   Icon(Icons.sports_motorsports,color: Colors.green[900],size: 30,),
                    Spacer(),
                    Text.rich(TextSpan(
                      children: [
                        TextSpan(text: '18\n', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                        TextSpan(text: 'min',style: TextStyle(fontSize: 10)),
                      ]
                    )),
                    Spacer(),
                    FloatingActionButton(mini: true,backgroundColor: Colors.grey[350],onPressed: (){},child:Icon(Icons.more_horiz,color: Colors.black,) ,),
                    Spacer(),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 200,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                ),

                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text.rich(TextSpan(
                      children: [
                        TextSpan(text:'\$',style: TextStyle(fontSize: 35,color: Colors.green) ),
                        TextSpan(text:'9', style: TextStyle(fontSize: 33,color: Colors.green,fontWeight: FontWeight.bold)),
                      ]
                    )),
                    SizedBox(height: 50,),
                    FloatingActionButton(mini: true,backgroundColor: Colors.green[900],onPressed: (){},child:Text('Buy',style: TextStyle(color: Colors.white),), ),
                    SizedBox(height: 10,),

                  ],
                ),
                margin: const EdgeInsets.all(25),),
              Spacer(),
            ],
          ),
        ),
          ),



      ],
    ),
  ),
),
    );
  }
}
