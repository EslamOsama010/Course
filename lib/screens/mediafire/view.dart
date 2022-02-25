import 'package:flutter/material.dart';
import 'package:myapp2/screens/mediafire/controller.dart';

class MediaFireScreen extends StatefulWidget {
  @override
  State<MediaFireScreen> createState() => _MediaFireScreenState();
}

class _MediaFireScreenState extends State<MediaFireScreen> {
  final controller = MediaFireController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset('assets/images/MediaFire.png'),
                SizedBox(
                  height: 40,
                ),
                Text(
                  '\t\tHow do you want to log in ?',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 20, letterSpacing: 1),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText:"Email address"),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "Password"),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        onChanged: (bool? value) {
                          setState(() {});
                          controller.isChecked = value!;
                        },
                        value: controller.isChecked,
                      ),
                      Text(
                        'Keep me logged in',
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Forget password?',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.blue[600],
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.blue[900]!.withOpacity(0.9),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 40,
                          width: 40,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'LOG IN WITH FACEBOOK',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.only(right: 10,bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/twit.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Log in With Twitter',
                          style: TextStyle(color: Colors.blueAccent,fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 50,
                  color: Colors.grey.withOpacity(0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Don\'t have an account ?'),
                    MaterialButton(onPressed: (){},child: Text('Create an account',style: TextStyle(color: Colors.blueAccent,fontSize: 11),),)
                  ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
