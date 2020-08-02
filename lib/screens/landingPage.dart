import 'package:flutter/material.dart';
import 'package:fitnes/screens/authorisationPage.dart';
import 'package:fitnes/screens/homePage.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = false;
    return isLoggedIn ? HomePage() : AuthorisationPage();
  }
}
