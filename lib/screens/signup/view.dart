import 'package:flutter/material.dart';
import 'package:myapp2/screens/signup/components/chat1.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: Colors.deepOrange.withOpacity(0.8),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Center(
                      child: Image.asset(
                    'assets/images/apple.png',
                    height: 150,
                    width: 150,
                  )),
                  Spacer(),
                  Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.only(bottom: 10, right: 20),
                      child: Text(
                        'Sign Up For Free',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Chat1(),
                  Chat1(
                    name: 'Email',
                    icon: Icons.mail,
                  ),
                  Chat1(
                    name: 'Phone Number',
                    icon: Icons.phone,
                  ),
                  Chat1(
                    name: 'Password',
                    icon: Icons.vpn_key,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'SignUp',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                      Text(
                        'Already a member ?',
                        style: TextStyle(color: Colors.black),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'SIGNIN',
                          style: TextStyle(
                              color: Colors.deepOrange.withOpacity(0.8)),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
