import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


import 'controller.dart';
class CalcScreen extends StatefulWidget {

  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  final controller = CalculatorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child:Container(
          padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Eslam Osama"),
            TextField(
              controller: controller.num1,
              decoration: InputDecoration(labelText: "enter num 1"),
            ),
            TextField(
              controller: controller.num2,
              decoration: InputDecoration(labelText: "enter num 2"),

            ),
            TextField(
              controller: controller.op,
              decoration: InputDecoration(labelText: "enter op"),

            ),
            ElevatedButton(onPressed:(){
              controller.calc();
              setState(() {

              });
            }, child: Text("Calculate")),
            Text("${controller.result}"),
          ],

        ),
      ),
      ),
      );
  }
}

