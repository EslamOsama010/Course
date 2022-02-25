import 'package:flutter/material.dart';
import 'package:myapp2/screens/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/components/chat1.dart';
import 'package:myapp2/screens/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/components/divider.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        centerTitle: true,
        elevation: 0,
        title: Text(
          'ألاذكار',
          style: TextStyle(color: Colors.yellow[100]),
        ),
        actions: [
          Icon(
            Icons.arrow_forward,
            color: Colors.yellow[100],
          ),
         SizedBox(width: 10,),
        ],
      ),
      body: Container(
        color: Colors.green[800],
        child: Column(
          children: [
            Chat1(),
            MyDivider(),
            Chat1(text: 'أذكار المساء',),
            MyDivider(),
            Chat1(text: 'أذكار بعد الصلاة',),
            MyDivider(),
            Chat1(text: 'أذكار النوم',),
            MyDivider(),
            Chat1(text: 'أذكار متفرقة',),
            MyDivider(),
            Chat1(text: 'أذكار المسجد',),
            MyDivider(),
            Chat1(text: 'أذكار الوضوء',),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}
