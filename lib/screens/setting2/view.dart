import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/screens/setting2/components/item2.dart';
import 'package:myapp2/screens/setting2/controller.dart';

import 'components/item1.dart';
import 'components/mydivider.dart';

class Setting2Screen extends StatefulWidget {
  @override
  State<Setting2Screen> createState() => _Setting2ScreenState();
}

class _Setting2ScreenState extends State<Setting2Screen> {
  final controller = Setting2Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
        title: Text("Settings"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Align(
                alignment: AlignmentDirectional.topStart,
                child: Item1(
                  text: 'account'.toUpperCase(),
                )),
            Container(
              margin: EdgeInsetsDirectional.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/eslam.jpg'),
                    ),
                    title: Text(
                      "Islam Osama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  MyDivider(),
                  ListTile(
                      leading: Text(
                        "Private Account ",
                        style: TextStyle(
                            color: controller.isChecked
                                ? Colors.black
                                : Colors.grey),
                      ),
                      trailing: Switch(
                        activeColor: Colors.deepPurple,
                        onChanged: (bool value) {
                          controller.isChecked = value;
                          setState(() {});
                        },
                        value: controller.isChecked,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: Item1(
                  text: 'push notifications'.toUpperCase(),
                )),
            Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Item2(
                    index: index,
                    controller: controller,
                  ),
                  separatorBuilder: (context, index) => MyDivider(),
                  itemCount: controller.titles.length,
                )),
            Container(
              margin: EdgeInsetsDirectional.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.grey,
                  ),
                  title: Text("Log out"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
