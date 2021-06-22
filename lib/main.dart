import 'package:flutter/material.dart';
import 'Screens/home.dart';
import 'Screens/login.dart';
import 'constants.dart';

void main() {
  runApp(Medicure());
}

class Medicure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kBackgroundColor,
        fontFamily: 'Montserrat',
      ),
      home: LoginPage(),
    );
  }
}
