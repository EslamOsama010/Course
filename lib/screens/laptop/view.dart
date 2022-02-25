import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/item1.dart';

class LaptopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.my_location,
              color: Colors.red,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            label: 'Popular',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Hello Islam Osama,\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      TextSpan(
                          text: 'where do you want to go ? ',
                          style: TextStyle(color: Colors.grey)),
                    ])),
                    Spacer(),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/eslam.jpg'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: MaterialButton(
                  onPressed: () {},
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Find destination'),
                  ),
                ),
              ),
              Item1(),
              Item1(
                text: '40 places worth to visit',
                name: 'Pokhara',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
