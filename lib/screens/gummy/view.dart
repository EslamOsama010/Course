import 'package:flutter/material.dart';
import 'package:myapp2/screens/gummy/controller.dart';

class GummyScreen extends StatefulWidget {

  @override
  _GummyScreenState createState() => _GummyScreenState();
}

class _GummyScreenState extends State<GummyScreen> {
  final controller = GummyController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(image: NetworkImage('https://i5.walmartimages.com/asr/0454ca45-06b7-4f9e-8404-b2c3cb4bc168_1.afbba6001b97cd3724900ce376150dc2.jpeg')),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(text:'Gummy\n',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,)),
                    TextSpan(text:'Vitamin Pills',style:TextStyle(fontSize: 30,)),
                  ]
                )),
              ),

              Row(
                children: [
                  SizedBox(width: 22,),
                  Container(
                    child: Text('\$14.50',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  ),
                  SizedBox(width: 140,),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(child: IconButton(onPressed: (){
                          setState(() { });
                          controller.minus();
                        }, icon: Icon(Icons.remove))),
                        Expanded(child: Center(child: Text('  ${controller.quantity.toString()}'))),
                        Expanded(child: IconButton(onPressed: (){
                          controller.plus();
                          setState(() { });
                        }, icon: Icon(Icons.add))),
                        SizedBox(width: 7,),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                alignment: Alignment.centerLeft,
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(text: 'About products\n\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,)),
                    TextSpan(text: 'helo from the other world helo from the other world\n',style:TextStyle(fontSize: 12),),
                    TextSpan(text: 'helo from the other world helo from the other world\n',style:TextStyle(fontSize: 12),),
                    TextSpan(text: 'helo from the other world helo from the other world\n',style:TextStyle(fontSize: 12),),
                    TextSpan(text: 'helo from the other world helo from the other world\n',style:TextStyle(fontSize: 12),),
                  ]
                )),
              ),
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Add to cart',style: TextStyle(fontWeight: FontWeight.bold)),
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
