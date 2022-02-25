import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: TabBarView(
                            children: [
                              Image.asset('assets/images/eslam.jpg'),
                              Image.asset('assets/images/eslam.jpg'),
                              Image.asset('assets/images/eslam.jpg'),
                            ],
                          ),
                        ),
                        TabBar(
                          labelColor: Colors.white,
                          tabs: [
                            Tab(text: 'Islam',),
                            Tab(text: 'Islam',),
                            Tab(text: 'Islam',),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.white,
                          tabs: [
                            Tab(text: 'Islam',),
                            Tab(text: 'Islam',),
                            Tab(text: 'Islam',),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Image.asset('assets/images/eslam.jpg'),
                              Image.asset('assets/images/eslam.jpg'),
                              Image.asset('assets/images/eslam.jpg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              )],
          ),
        ),
      ),
    );




    // return DefaultTabController(
    //    length: 3,
    //    child: Scaffold(
    //      appBar: AppBar(
    //        bottom:TabBar(
    //          tabs: [
    //            Tab(text: 'Islam',),
    //            Tab(text: 'Islam',),
    //            Tab(text: 'Islam',),
    //          ],
    //        ),
    //      ),
    //
    //      body: TabBarView(
    //        children: [
    //          Image.asset('assets/images/eslam.jpg'),
    //          Image.asset('assets/images/eslam.jpg'),
    //          Image.asset('assets/images/eslam.jpg'),
    //        ],
    //      ),
    //    ),
    //
    //
    // );
  }
}
