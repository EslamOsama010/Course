import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/burj2.jpg'),fit: BoxFit.fill)
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.arrow_back_ios_rounded,color: Colors.grey[600],),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Center(child: Text('Hotel Bocking',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                    SizedBox(height: 10 ,),
                    Center(child: Text('2.122  world  Class  Hotel  for  You  and  Your  Family  ',style: TextStyle(fontSize: 10,color: Colors.white),))
                  ],
                ),

              ),
              Container(
                margin: const EdgeInsets.only(top: 35),
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.location_on,color: Colors.green[900],),
                        ),
                        subtitle: Text('Enter you destination'),
                        title:Text ('DESTINATION',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                        subtitle: Text('18 Sep - 20 Sep (2 night)'),
                        title:Text ('SELECT DATE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.date_range,color: Colors.green[900],),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                        subtitle: Text('1 room, 1 guest'),
                        title:Text ('GUESTS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.person,color: Colors.green[900],),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Colors.grey,),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 20),)),
                      ),
                    ),
                    SizedBox(height: 10,),
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
