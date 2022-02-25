import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/screens/quarn/components/chat1.dart';
import 'package:myapp2/screens/quarn/components/chat2.dart';
import 'package:myapp2/screens/quarn/components/chat4.dart';

import 'components/chat3.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.green[900],
          child: Column(
            children: [
              Chat2(),
              Container(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  children: [
                    Chat1(
                      name: ' استمع للقرأن',
                      image: 'assets/images/quranni.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Chat1(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 15, right: 15, left: 15, bottom: 15),
                child: Column(
                  children: [
                    Chat3(),
                    SizedBox(
                      height: 10,
                    ),
                    Chat3(
                      text: 'التسبيح',
                      img: 'assets/images/icon.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Chat3(
                      text: 'القبلة',
                      img: 'assets/images/ka3ba.png',
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    Chat4(),
                    Chat4(
                      color: Colors.grey,
                      images: 'assets/images/starss.png',
                      names: 'تقييم التطبيق',
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
