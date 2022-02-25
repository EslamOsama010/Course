import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/chat1.dart';
import 'components/chat2.dart';
import 'controller.dart';


class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final controller = SettingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.green,
        ),
        elevation: 1,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Settings',

                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/account.png', color: Colors.green[800],
                      height: 15,
                      width: 15,),
                    SizedBox(width: 20,),
                    Text('Account', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              SizedBox(height: 10,),
              Chat1(),
              Chat1(text: 'Content Settings',),
              Chat1(text: 'Language',),
              Chat1(text: 'Privacy and Policy',),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/sound.png', color: Colors.green[800],
                      height: 15,
                      width: 15,),
                    SizedBox(width: 20,),
                    Text('Notifications', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              SizedBox(height: 10,),
              Chat2(controller: controller,),
              Chat2(name: 'Account Status', controller: controller,),
              SizedBox(height: 20,),
              Container(

                  decoration: BoxDecoration(
                    border: Border.all( color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(onPressed:(){},
                      child: Text('Log out',
                        style: TextStyle(color: Colors.black, fontSize: 15),)))


            ],
          ),
        ),
      ),
    );
  }
}
