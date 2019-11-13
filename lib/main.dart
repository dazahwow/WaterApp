import 'package:flutter/material.dart';
import 'package:water_app/OnBoardingScreens/MainOnboardingScreen.dart';
import 'package:water_app/OnBoardingScreens/test.dart';
import 'package:water_app/home_screen.dart';
import 'package:water_app/onboarding.dart';
import 'package:water_app/onboarding/activityScreenOption.dart';
import 'package:water_app/onboarding/genderScreenOption.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        
      ),
      debugShowCheckedModeBanner: false,
      home: MainOnBoardingScreen(),
      routes: <String, WidgetBuilder> {
        'ActivityScreenOption': (BuildContext context) => ActivityScreenOption(),
      }
    );
  }
}
/*
* We'll need:
* to import .flr
* controller for the water
* math for add and sub water and correlate to animation
* reset progress button
* set goal for how many cups
*/