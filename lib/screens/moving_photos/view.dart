import 'package:flutter/material.dart';
import 'package:myapp2/screens/moving_photos/controller.dart';

class MovingPhotosScreen extends StatefulWidget {
  @override
  State<MovingPhotosScreen> createState() => _MovingPhotosScreenState();
}

class _MovingPhotosScreenState extends State<MovingPhotosScreen> {
  final controller = MovingPhotosController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.pages[controller.pageNumber],
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        currentIndex: controller.pageNumber,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          controller.pageNumber = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_sharp), label: 'Gifts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
