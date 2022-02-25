import 'package:flutter/material.dart';

import '../controller.dart';

class Item2 extends StatefulWidget {
  final index;

  final Setting2Controller? controller;

  Item2({this.index, this.controller});

  @override
  State<Item2> createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        widget.controller!.titles[widget.index],
        style: TextStyle(
          color: widget.controller!.values[widget.index]
              ? Colors.black
              : Colors.grey,
        ),
      ),
      trailing: Switch(
        activeColor: Colors.deepPurple,
        value: widget.controller!.values[widget.index],
        onChanged: (bool value) {
          widget.controller!.values[widget.index] = value;
          setState(() {});
        },
      ),
    );
  }
}
