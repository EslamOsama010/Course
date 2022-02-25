import 'package:flutter/material.dart';
import 'package:myapp2/screens/result/components/chat1.dart';
import 'package:myapp2/screens/result/components/chat2.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          'Result',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.blueAccent])),
        child: SafeArea(
          child: Column(
            children: [
              Chat1(),
              Chat1(
                text: '55.555555555556%',
                name: 'Score',
              ),
              Chat1(
                text: '5/9',
                name: 'Correct Answers',
              ),
              Chat1(
                name: 'Incorrect Answers',
                text: '4/9',
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,right: 15,left: 15),
                child: Row(
                  children: [
                    Chat2(),
                    Spacer(),
                    Chat2(width: 120,text: 'Check Answers',color: Colors.blueAccent,),
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
