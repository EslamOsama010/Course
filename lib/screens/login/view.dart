import 'package:flutter/material.dart';
import 'package:myapp2/screens/login/controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller =LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:[ Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Container(
                    height: 100,
                    width: 100,
                    decoration:BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(image:NetworkImage('https://images.vexels.com/media/users/3/142675/isolated/preview/84e468a8fff79b66406ef13d3b8653e2-house-location-marker-icon.png')),
                    ) ,
                  ),
                      SizedBox(height: 10,),
                  Container(child: Text('Sign In',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 40),),
                                 ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          TextField(
                            controller:controller.userNameController,
                            decoration: InputDecoration(labelText: 'User name',
                          ),),
                          SizedBox(height: 15,),
                          TextField(
                            controller:controller.passwordController,
                            decoration: InputDecoration(labelText: ' Password',
                          ),),
                          SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Text('Forget Password ?',style: TextStyle(color: Colors.grey),),
                           ],
                         ),
                          SizedBox(height: 25,),
                          Text('${controller.result}'),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: (){
                                 setState(() {
                                         });
                                   controller.sign();
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 50,
                              width: 270,
                              decoration: BoxDecoration(
                                    color: Colors.red[300],
                                    borderRadius: BorderRadius.circular(70),
                                  ),
                              child: Center(child: Text('Sign In',style: TextStyle(fontSize: 25,color: Colors.white),)),
                            ),
                          ),

                          SizedBox(height: 30,),
                          Text('or',style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 20,),
                          Container(
                            child: Row(
                              children: [
                                FloatingActionButton(backgroundColor: Colors.white,onPressed: (){},child:Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/images/search.png'),),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                        ),),),
                                Spacer(),
                                FloatingActionButton(backgroundColor: Colors.white,onPressed: (){},child:Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/facebook.png'),),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),),),
                                Spacer(),
                                FloatingActionButton(backgroundColor: Colors.white,onPressed: (){},child:Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/twitter.png'),),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),),),
                                Spacer(),
                                FloatingActionButton(backgroundColor: Colors.white,onPressed: (){},child:Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/linkedin.png'),),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),),)
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account ?'),
                              TextButton(onPressed: (){}, child: Text('Sign up',style: TextStyle(decoration: TextDecoration.underline),)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),],
        ),
      ),
    );
  }
}
