import 'package:flutter/material.dart';
class CuisinesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.close,color: Colors.black,size: 30,),
              title: Text('          cuisines',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              trailing: TextButton(child:Text('Clear all',style: TextStyle(color: Colors.red),),onPressed: (){},),
            ),
            ListTile(leading: Text('Popular filters',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),),
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 20,),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Islam',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 15,),
              ],
            ),
            SizedBox(height: 200,),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Apply',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
