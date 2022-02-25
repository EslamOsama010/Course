import 'package:flutter/material.dart';
class BurgerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child:   Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(50),
    ),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Row(
            children: [
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios_rounded),),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border),),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              SizedBox(width: 25,),
              Text('Bacon Burger',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,),),
              SizedBox(width: 5,),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white10,
                   borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image:AssetImage('assets/images/burger.png'),),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          child: Text.rich(TextSpan(
            children: [
              TextSpan(text: 'A  Signture  flame - grilled  beef  patty\n',style: TextStyle(fontSize: 15)),
               TextSpan(text:'       topped  with  smoked  bacon\.',style: TextStyle(fontSize: 15) ),
            ]
          )),
        ),
        SizedBox(height: 10,),
        Container(
          height: 250,
          width: double.infinity,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(120),
            color: Colors.grey[100],
             image: DecorationImage(image:AssetImage('assets/images/826ed74d-bf2f-4008-88e5-9f99efc5936a.jpg'),fit: BoxFit.scaleDown),
          )
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              Spacer(),
              Transform.translate(
                offset: const Offset(17, -35),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text('S',style: TextStyle(fontSize: 20),)),
                ),
              ),
              Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('M',style: TextStyle(fontSize: 20),)),
              ),
              Spacer(),
              Transform.translate(
                offset: const Offset(-17, -35),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('L',style: TextStyle(fontSize: 20),)),

                ),
              ),
              Spacer(),
            ],
          ),
        ),
        Row(
          children: [
            Spacer(),
            FloatingActionButton(backgroundColor:Colors.orangeAccent[100],mini: true,onPressed: (){},child:Icon(Icons.remove,color: Colors.grey,),),
            SizedBox(width: 30,),
            Text('2',style: TextStyle(fontSize: 25),),
            SizedBox(width: 30,),
            FloatingActionButton(backgroundColor:Colors.orangeAccent[100],mini: true,onPressed: (){},child:Icon(Icons.add,color: Colors.grey,),),
            Spacer(),
          ],
        ),
        SizedBox(height: 5,),
        Container(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                  child: Column(
                children: [
                  Text('price',style: TextStyle(fontSize: 10,color: Colors.grey),),
                  SizedBox(height: 10,),
                  Text('       \$44\.80',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              )),
              Spacer(),
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:Radius.circular(10) ),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:Radius.circular(10) ),
                    color: Colors.orange[300],
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(Icons.shopping_cart,color: Colors.black,),
                      SizedBox(width: 10,),
                      Text('Go To Cart',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      Spacer(),
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
),
    );
  }
}
