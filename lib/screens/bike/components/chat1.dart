import 'package:flutter/material.dart';

import '../controller.dart';

class Chat1 extends StatelessWidget {
   final controller = BikeController() ;
   final index;

   Chat1({ this.index}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 5),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image:
                    AssetImage('assets/images/top2.png'),
                    fit: BoxFit.fill)),
            height: 70,
            width: 70,
          ),
          Text(controller.bikeNames[index]),
        ],
      ),
    );
  }
}
