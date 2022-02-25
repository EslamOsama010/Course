import 'package:flutter/material.dart';
class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.menu,color: Colors.red,size: 28,),
              title: Center(child: Text('Notifications\t\t\t\t\t\t\t',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.notifications_active,color: Colors.black,size: 35,),
              title: Text('Don\'t forget you voucher code!',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              subtitle: Text('please your 1st order using the code LDCPSADM or EGP 50 discourt on your first order',style: TextStyle(color: Colors.grey,fontSize: 10),),
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.notifications_active,color: Colors.black,size: 35,),
              title: Text('Don\'t forget you voucher code!',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              subtitle: Text('please your 1st order using the code LDCPSADM or EGP 50 discourt on your first order',style: TextStyle(color: Colors.grey,fontSize: 10),),
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.notifications_active,color: Colors.black,size: 35,),
              title: Text('Don\'t forget you voucher code!',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              subtitle: Text('please your 1st order using the code LDCPSADM or EGP 50 discourt on your first order',style: TextStyle(color: Colors.grey,fontSize: 10),),
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.notifications_active,color: Colors.black,size: 35,),
              title: Text('Don\'t forget you voucher code!',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              subtitle: Text('please your 1st order using the code LDCPSADM or EGP 50 discourt on your first order',style: TextStyle(color: Colors.grey,fontSize: 10),),
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.notifications_active,color: Colors.black,size: 35,),
              title: Text('Don\'t forget you voucher code!',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              subtitle: Text('please your 1st order using the code LDCPSADM or EGP 50 discourt on your first order',style: TextStyle(color: Colors.grey,fontSize: 10),),
            ),
            Divider(color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}
