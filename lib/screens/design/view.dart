import 'package:flutter/material.dart';

class DesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              Container(
                color: Colors.green,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(150),bottomRight: Radius.circular(70))),
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Container(
                color: Colors.amberAccent,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70),bottomRight: Radius.circular(70))),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
