import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp2/screens/bike/components/chat1.dart';
import 'package:myapp2/screens/bike/components/chat2.dart';
import 'package:myapp2/screens/bike/components/text1.dart';
import 'package:myapp2/screens/bike/controller.dart';

class BikeScreen extends StatelessWidget {
  final controller = BikeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Bike'),
        leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Text1()),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    ...List.generate(
                      controller.bikeNames.length,
                      (index) =>Chat1(index: index),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 120,
              color: Colors.deepPurple.withOpacity(0.8),
              child: Row(
                children: [
                  Spacer(),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Buy, Sell, Exchange\n',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    TextSpan(
                        text: 'All in one place',
                        style: TextStyle(color: Colors.white)),
                  ])),
                  Spacer(),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/clip.png',
                        color: Colors.white,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text1(
                        text: 'Recent post',
                      )),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'view all',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      ...List.generate(
                        4,
                        (index) =>Chat2(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
