import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp2/screens/paris/components/chat1.dart';
import 'package:myapp2/screens/paris/controller.dart';
import 'package:myapp2/screens/paris/model.dart';

class ParisScreen extends StatefulWidget {
  @override
  State<ParisScreen> createState() => _ParisScreenState();
}

class _ParisScreenState extends State<ParisScreen> {
 final controller = ParisController();
 ParisModel? model;

 void get() async {
   model = await controller.getData();

   setState(() {});
 }

 @override
 void initState() {
   super.initState();
   get();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.menu,
                color: Colors.grey,
                size: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text:' \t\t\t\t${model!.name}\n',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              TextSpan(
                  text: '\t\tTUESDAY  9:00 AM', style: TextStyle(fontSize: 15,letterSpacing: 2)),
            ])),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/raining.png',
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '\t${model!.main.humidity}°C\n',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 40)),
              TextSpan(
                  text: 'RAIN SHOWER\n ',

                  style: TextStyle(
                    color: Colors.grey,letterSpacing: 4,
                    fontSize: 10,
                  )),
              TextSpan(
                  text: '\t\t\t\t\t\t\t\t\t\tP A R I S',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  )),
            ])),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.black54,
              indent: 160,
              endIndent: 160,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Chat1(name: 'SUNRISE',img: 'sunrise.png',text: model!.sys.sunrise.toString(),),
                  VerticalDivider(
                    color: Colors.deepOrange,
                    indent: 55,
                    endIndent: 55,
                    thickness: 3,
                  ),

                  Chat1(img: 'wind.png',text:' ${model!.wind.speed.toDouble()}m/s',name: 'WIND',),


                  Chat1(name: 'TEMPERATURE',text: '${model!.main.tempMin.toDouble()}°',img: 'temperature.png',),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
