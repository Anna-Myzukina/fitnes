import 'package:flutter/material.dart';

class AuthorisationPage extends StatefulWidget {
  @override
  _AuthorisationPageState createState() => _AuthorisationPageState();
}

class _AuthorisationPageState extends State<AuthorisationPage> {
  @override
  Widget build(BuildContext context) {
    Widget _logo() {
      return Padding(
        padding: EdgeInsets.only(top: 100),
        child: Container(
          child: Align(
            child: Text(
              'FitTrak',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      );
    }

    Widget _form(String label, void func()){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: Text('Email'),
              ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('Password'),
              ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20, right:  20),
              child: Container(
                height: 50,
                width: MediaQuery,
              ),)
           ],
          )
      )
    }

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: <Widget>[
            _logo(),
            _form(),
          ],
        ));
  }
}
