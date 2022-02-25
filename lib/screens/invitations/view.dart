import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvitationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '\t\t\t\t\tInvitations\n',
                      style: TextStyle(
                        fontSize: 27,
                      )),
                  TextSpan(
                      text: 'A smarter way to hold',
                      style: TextStyle(fontSize: 12, letterSpacing: 1)),
                  TextSpan(
                      text: ' events',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 12,
                          letterSpacing: 1)),
                ])),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius:
                    BorderRadius.only(topRight: Radius.circular(70)),
                  ),
                  child:Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Spacer(flex: 1,),
                        Image.asset('assets/images/email.png',height: 250,width: 250,),
                        Spacer(flex: 5,),
                        Container(
                            color: Colors.white,
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            child: MaterialButton(onPressed: (){},child: Text('Create on Account',style: TextStyle(color: Colors.pink),),)),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white
                              ),
                            ),
                            child: MaterialButton(onPressed: (){},child: Text('Sign in with Google',style: TextStyle(color: Colors.white),),)),
                        Spacer(flex: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account ?',style: TextStyle(color: Colors.white)),
                            MaterialButton(onPressed: (){}, child: Text('Sign in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            )],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
