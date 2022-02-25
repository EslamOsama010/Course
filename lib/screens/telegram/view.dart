
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/screens/telegram/components/chat_item.dart';


import 'controller.dart';
class TelegramScreen extends StatefulWidget {
  @override
  _TelegramScreenState createState() => _TelegramScreenState();
}

class _TelegramScreenState extends State<TelegramScreen> {
  final controller =TelegramController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
               begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.orange,
                ]
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading:Text('Cart_icon',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),) ,
                    title: Column(
                      children: [
                        Icon(Icons.account_circle_outlined,color: Colors.white,size: 40,),
                        Text('Login',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    trailing:Icon(Icons.settings,color: Colors.white,size: 30,) ,
                  ),
                  ...List.generate(controller.names2.length, (index) =>  InkWell(
                    onTap: (){
                      controller.selectIndex=index;
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 70,top: 10),
                      decoration: BoxDecoration(
                        color: index==controller.selectIndex? Colors.black:null,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),topRight: Radius.circular(25)),
                      ),
                      child: ListTile(
                        leading:(controller.icon[index]),
                        title:  Text('${controller.names2[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                      ),
                    ),
                  ),
                  ),

                   Text('Contact us',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Spacer(),
                      FloatingActionButton(mini: true,backgroundColor: Colors.white,onPressed: (){},child:Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/facebook.png'),),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),),),
                      FloatingActionButton(mini: true,backgroundColor: Colors.white,onPressed: (){},child:Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/instagram.png'),),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),),),
                      FloatingActionButton(mini: true,backgroundColor: Colors.white,onPressed: (){},child:Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/twitter.png'),),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),),),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.add),label: 'add'),
          BottomNavigationBarItem(icon:Icon(Icons.remove),label: 'remove'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
      ),
       body: SingleChildScrollView(
        child: Column(
          children: [
        ...List.generate(controller.names1.length, (index) => ChatItems(controller.names1[index],controller.names3[index]),
        ),
           ],
        ),


       ),);
  }
}
