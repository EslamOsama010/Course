import 'package:flutter/material.dart';
import 'package:myapp2/screens/my_cart/components/chat1.dart';

import 'controller.dart';

class CartScreen extends StatelessWidget {
  final controller = CartController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.arrow_back),
        title: Text('My Cart'),

      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[200],
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Chat1(
                            name: 'Item 10',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Chat1(
                            name: 'Item 11',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Chat1(
                            name: 'Item 12',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Chat1(
                            name: 'Item 13',
                          ),
                          // SizedBox(height: 10,),
                          // Chat1(name: 'Item 14',),
                          // SizedBox(height: 10,),
                          // Chat1(name: 'Item 20'),
                          // SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[400],
                  child: Column(
                    children: [
                      ListTile(
                        leading:Text('Checkout Price:') ,
                        trailing: Text('Rs.5000'),
                      ),
                      Container(
                        color: Colors.deepOrange,
                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: (){},
                           child: Text('Check out',style: TextStyle(fontSize: 15,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomSheet:  Container(
      //   height: 130,
      //   padding: const EdgeInsets.all(10),
      //   color: Colors.grey[400],
      //   child: Column(
      //     children: [
      //       ListTile(
      //         leading:Text('Checkout Price:') ,
      //         trailing: Text('Rs.5000'),
      //       ),
      //       SizedBox(height:5), Container(
      //         color: Colors.deepOrange,
      //         width: double.infinity,
      //         child: MaterialButton(
      //           onPressed: (){},
      //            child: Text('Check out',style: TextStyle(fontSize: 15,color: Colors.white),),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
