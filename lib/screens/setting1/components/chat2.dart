import 'package:flutter/material.dart';

import '../controller.dart';


class Chat2 extends StatefulWidget {

  final name;
  final SettingController? controller;

  Chat2({ this.name = 'New update', this.controller});

  @override
  State<Chat2> createState() => _Chat2State();
}

class _Chat2State extends State<Chat2> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Text(widget.name, style: TextStyle(fontSize: 15, color:widget.controller!.isChecked?Colors.black:Colors.grey),),
        trailing: Switch(
          activeColor: Colors.green,
          value: widget.controller!.isChecked,
          onChanged: (bool val) {
            widget.controller!.isChecked = val;
            setState(() {});
          },
        ),
      ),
    );
  }
}
