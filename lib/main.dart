import 'package:flutter/material.dart';
import 'package:myapp2/screens/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/view.dart';
import 'package:myapp2/screens/arrival/view.dart';
import 'package:myapp2/screens/bad/view.dart';
import 'package:myapp2/screens/bike/view.dart';
import 'package:myapp2/screens/burger/view.dart';
import 'package:myapp2/screens/calculator/view.dart';
import 'package:myapp2/screens/congratulations/view.dart';
import 'package:myapp2/screens/cuisines/view.dart';
import 'package:myapp2/screens/design/view.dart';
import 'package:myapp2/screens/drop_pup_menu/view.dart';
import 'package:myapp2/screens/egypt/view.dart';
import 'package:myapp2/screens/food/view.dart';
import 'package:myapp2/screens/gummy/view.dart';
import 'package:myapp2/screens/home/view.dart';
import 'package:myapp2/screens/home2/view.dart';
import 'package:myapp2/screens/invitations/view.dart';
import 'package:myapp2/screens/laptop/view.dart';
import 'package:myapp2/screens/lemon/view.dart';
import 'package:myapp2/screens/login/view.dart';
import 'package:myapp2/screens/marie/view.dart';
import 'package:myapp2/screens/mediafire/view.dart';
import 'package:myapp2/screens/month/view.dart';
import 'package:myapp2/screens/moving_photos/view.dart';
import 'package:myapp2/screens/my_cart/view.dart';
import 'package:myapp2/screens/notconnected/view.dart';
import 'package:myapp2/screens/notificatoins/view.dart';
import 'package:myapp2/screens/paris/view.dart';
import 'package:myapp2/screens/quarn/view.dart';
import 'package:myapp2/screens/ramadan/view.dart';
import 'package:myapp2/screens/result/view.dart';
import 'package:myapp2/screens/setting1/view.dart';
import 'package:myapp2/screens/setting2/view.dart';
import 'package:myapp2/screens/signin/view.dart';
import 'package:myapp2/screens/signup/view.dart';
import 'package:myapp2/screens/splash/view.dart';
import 'package:myapp2/screens/tabbar/view.dart';
import 'package:myapp2/screens/telegram/view.dart';
import 'package:myapp2/screens/test/view.dart';
import 'package:myapp2/screens/weather/view.dart';
import 'screens/hotel/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:PageView(
        physics: BouncingScrollPhysics(),
        children: [
          BadScreen(),
          Test2Screen(),
          CartScreen(),
          InvitationScreen(),
          ParisScreen(),
          WeatherScreen(),
          RamadanScreen(),
          DropPupMenuScreen(),
          TabBarScreen(),
          SignInScreen(),
          ArrivalScreen(),
          TestScreen(),
          MediaFireScreen(),
          EgyptScreen(),
          BikeScreen(),
          MovingPhotosScreen(),
          SignUpScreen(),
          LaptopScreen(),
          MarieScreen(),
          Setting2Screen(),
          SettingScreen(),
          FoodScreen(),
          ResultScreen(),
          NotConnectedScreen(),
          QuranScreen(),
          CuisinesScreen(),
          SplashScreen(),
          CongratulationScreen(),
          NotificationsScreen(),
          HotelScreen(),
          DesignScreen(),
          TelegramScreen(),
          CalcScreen(),
          MonthScreen(),
          BurgerScreen(),
          GummyScreen(),
          LemonScreen(),
          LoginScreen(),
          HomeScreen(),
          HomeScreen2(),
        ],
      ),
    );
  }
}

