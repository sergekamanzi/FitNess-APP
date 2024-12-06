import 'package:flutter/material.dart';
import 'screens/welcome_screens/welcome1.dart';
import 'screens/welcome_screens/welcome2.dart';
import 'screens/registration_screens/register.dart';
import 'screens/registration_screens/login.dart';
import 'screens/registration_screens/verification.dart';
import 'screens/input_screens/gender.dart';
import 'screens/input_screens/goal.dart';
import 'screens/input_screens/height.dart';
import 'screens/input_screens/weight.dart';
import 'screens/input_screens/level.dart';
import 'screens/input_screens/activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitPulse',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome1', // Set the initial route
      routes: {
        '/welcome1': (context) => Welcome1(),
        '/welcome2': (context) => Welcome2(),
        '/register': (context) => Register(),
        '/verification': (context) => PhoneVerification(),
        '/login': (context) => LoginPage(),
        '/gender': (context) => GenderSelection(),
        '/goal': (context) => GoalSelection(),
        '/height': (context) => HeightSelection(),
        '/weight': (context) => WeightPage(),
        '/level': (context) => LevelPage(),
        '/activity': (context) => ActivitySelection(),
      },
    );
  }
}
