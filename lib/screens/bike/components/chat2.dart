import 'package:flutter/material.dart';

class Chat2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            color: Colors.black.withOpacity(0.8),
            child: Image.asset(
              'assets/images/top2.png',
              height: 130,
              width: 100,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            alignment: Alignment.topCenter,
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Bajaj pulsar 220F\n\n\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
              TextSpan(text: 'year 2019\n\n'),
              TextSpan(text: 'Condition'),
            ])),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                width: 90,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                      'Rs, 1\.80\.000',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 55),
                  child: Image.asset(
                    'assets/images/stars2.jpg',
                    width: 60,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
