import 'package:flutter/material.dart';

class DropPupMenuScreen extends StatefulWidget {
  @override
  State<DropPupMenuScreen> createState() => _DropDownMenuScreenState();
}

class _DropDownMenuScreenState extends State<DropPupMenuScreen> {
  String? dropDownValue = names[0];
  String? value;
  String? newValue;
  static var names = [
    'Islam',
    'Amr',
    'Ahmed',
    'Mahmoud',
    'Hassan',
    'Amir',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: dropDownValue,
                onChanged: (String? val) {
                  dropDownValue = val;
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(dropDownValue!),
                    duration: Duration(seconds: 2),
                  ));
                },
                items: List.generate(
                    names.length,
                    (index) => DropdownMenuItem(
                          child: Text(names[index]),
                          value: names[index],
                        )),
              ),
              DropdownButton(
                hint: Text('Click'),
                value: value,
                onChanged: (String? val) {
                  value = val;
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(value!),
                    duration: Duration(seconds: 2),
                  ));
                },
                items: List.generate(
                    names.length,
                    (index) => DropdownMenuItem(
                          child: Text(names[index]),
                          value: names[index],
                        )),
              ),
              PopupMenuButton(
                onSelected: (String value) {
                  setState(() {});
                  newValue = value;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(newValue!),
                    duration: Duration(seconds: 2),
                  ));
                },
                itemBuilder: (context) => List.generate(
                    names.length,
                    (index) => PopupMenuItem(
                          child: Text(names[index]),
                          value: names[index],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
