import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var formKey =GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Transform.translate(
          offset: Offset(-25, 1),
          child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                size: 35,
              ),
              label: Transform.translate(
                offset: Offset(-12, 1),
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              )),
        ),
        actions: [
          Center(
              child: Text(
            'Sign up',
            style: TextStyle(color: Colors.black, fontSize: 22),
          )),
          SizedBox(
            width: 130,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.grey[100],
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Spacer(
                        flex: 4,
                      ),
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/eslam.jpg'),
                      ),
                      Spacer(
                        flex: 6,
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Facebook',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: double.infinity,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Twitter',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Or sign up with email'),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty) {
                            return 'Email must be not empty';

                          }return null;


                        },
                        decoration: InputDecoration(
                            icon: Icon(Icons.mail),
                            suffixIcon: TextButton(onPressed: (){},child: Text('Forget'),),
                            labelText: "Email",
                      ),),
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty) {
                            return 'Password must be not empty';
                          }  return null;


                        },
                        decoration: InputDecoration(

                            icon: Icon(Icons.lock),
                            suffixIcon: TextButton(onPressed: (){},child: Text('Forget'),),
                            labelText: "Password"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
                          color: Colors.blue[600],
                          width: double.infinity,
                          child: MaterialButton(onPressed: (){
                            setState(() {

                            });
                            if(formKey.currentState!.validate()){

                              print('form validate');
                            }else{
                              print('form not validate');

                            }
                          },child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 25),),)),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account ?'),
                          TextButton(onPressed: (){}, child: Text('Log in',)),
                        ],
                      ),


                    ],
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
