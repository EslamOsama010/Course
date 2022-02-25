import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RamadanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/رمضان.jpg'),fit: BoxFit.fill
                ),
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 441),
            child: Column(
              children: [
               Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                 ),
                 height: MediaQuery.of(context).size.height/2.8,
                 child: Container(
                   width: double.infinity,
                   child: Column(
                     children: [
                       SizedBox(height: 40,),
                       Text('Ramadan Kareem',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                       SizedBox(height: 10,),
                       Text.rich(TextSpan(
                         style: TextStyle(fontSize: 13,letterSpacing: 1 ),
                         children: [
                           TextSpan(text:'\t\tWhen the month of Ramadan starts,the\n' ),
                           TextSpan(text: 'gates of heaven are opened and the gates\n'),
                           TextSpan(text:'\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tof hell are closed'),
                         ]
                       )),
                       SizedBox(height: 30,),
                       Container(
                         padding: const EdgeInsets.only(bottom: 5),
                           width: 250,
                           decoration: BoxDecoration(
                             color: Colors.orange,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: MaterialButton(onPressed: (){},child: Center(child: Text('Let\'s get started',style: TextStyle(color: Colors.white,fontSize: 15),)),))

                     ],
                   ),
                 ),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
