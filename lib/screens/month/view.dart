import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp2/screens/month/controller.dart';
class MonthScreen extends StatefulWidget {
  @override
  _MonthScreenState createState() => _MonthScreenState();
}
class _MonthScreenState extends State<MonthScreen> {
  final controller =MonthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Eslam Osama Elseyd'),
              TextField(
                controller: controller.numofmonth,
                decoration: InputDecoration(labelText: 'enter num of month'),
              ),
              ElevatedButton(onPressed: (){
                controller.mon();
                setState(() {
                });
              }, child: Text('Press')),
              Text('${controller.result}'),
            ],
          ),
        ),
      ),
    );
  }
}
