import 'package:fitnes/screens/landingPage.dart';
import 'package:flutter/material.dart';
import 'screens/landingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitnes tracker',
      theme: ThemeData(
        primaryColor: Colors.green[200],
        // textTheme: TextTheme(title: TextStyle(color: Colors.white))
      ),
      home: LandingPage(),
    );
  }
}
