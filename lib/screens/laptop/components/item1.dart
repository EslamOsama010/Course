import 'package:flutter/material.dart';

class Item1 extends StatefulWidget {
  final name;
  final text;

  Item1({this.name = 'Kathmandu', this.text = '90 places worth to visit'});

  bool isFav = true;

  @override
  State<Item1> createState() => _Item1State();
}

class _Item1State extends State<Item1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/labtob.jpg'), fit: BoxFit.fill)),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    setState(() {});
                    widget.isFav = !widget.isFav;
                  },
                  icon: Icon(
                    widget.isFav ? Icons.favorite_border : Icons.favorite,
                    color: widget.isFav ? Colors.white : Colors.red,
                  ))),
          Spacer(
            flex: 6,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 60,
              width: 150,
              color: Colors.black.withOpacity(0.7),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '${widget.name}\n',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  TextSpan(
                      text: widget.text,
                      style: TextStyle(fontSize: 12, color: Colors.white70)),
                ])),
              ),
            ),
          ),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
