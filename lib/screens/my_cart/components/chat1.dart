import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controller.dart';

class Chat1 extends StatefulWidget {
  final name;

  Chat1({this.name});

  @override
  State<Chat1> createState() => _Chat1State();
}

class _Chat1State extends State<Chat1> {
  final controller = CartController();
  bool isDeleted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/bags.png'),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Row(children: [
                Text(
                  widget.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {});
                    isDeleted = true;
                  },
                ),
              ]),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Price: \$200\n', style: TextStyle(fontSize: 12)),
                TextSpan(
                    text: 'Sub Total:\t\t', style: TextStyle(fontSize: 12)),
                TextSpan(
                    text: '\$400\n\n', style: TextStyle(color: Colors.orange)),
                TextSpan(
                    text: 'Ships Free', style: TextStyle(color: Colors.orange)),
              ])),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      controller.minus();
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.brown,
                    )),
                Container(
                  height: 30,
                  width: 20,
                  child: Center(child: Text('${controller.quantity}')),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {});
                      controller.plus();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.green,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
