import 'package:flutter/material.dart';

class MarieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/marie.jpg'),
              )),
          child: Column(
            children: [
              Spacer(),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2.5,
                color: Colors.blue.withOpacity(0.3),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Marie Schrader',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Spacer(),
                    Container(
                      height: 265,
                      color: Colors.blue.withOpacity(0.5),
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45),
                            )),
                        child: Container(
                          margin:const EdgeInsets.only(right: 60,left: 20),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Spacer(flex: 1,),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character ID : 6 ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Name : Marie Schrader ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Status :Alive ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Birthday : Unknown ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Category : Breaking bad ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Nick name : Marie ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Portrayed : Betsy Brandt ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Appearance : [1,2,3,4,5] ',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Character Occupation : [Housewife,Clepto]',
                                    style: TextStyle(color: Colors.white,)),
                              ),
                              Spacer(flex: 2,),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
