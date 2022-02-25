import 'package:flutter/material.dart';

class ArrivalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'new aarivals'.toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: Text(
              'SEE ALL',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ...List.generate(
            10,
            (index) => Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/eslam.jpg',
                    height: 140,
                    width: 140,
                  ),
                  Text('Top Quality fashion item',style: TextStyle(fontSize: 11),),
                  Text(
                    'Rs 1,245',
                    style: TextStyle(color: Colors.redAccent),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
