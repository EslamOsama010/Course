import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/foods.jpg'),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/restaurant.png',
                    height: 60,
                    width: 60,
                  ),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: '\nGood Food\n\n',
                        style: TextStyle(color: Colors.redAccent, fontSize: 25),
                      ),
                      TextSpan(
                          text:
                              'Nutritionally balanced, easy to\ncook recipes\. Quality fresh local\ningredients\.',
                          style: TextStyle(letterSpacing: 1, fontSize: 12)),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Spacer(),
                      Text('Already have account?',style: TextStyle(fontSize: 15),),
                      TextButton(onPressed: (){}, child: Text('Log in',style: TextStyle(color: Colors.black),)),
                      Spacer(),
                    ],
                  ),
                  Spacer(),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
