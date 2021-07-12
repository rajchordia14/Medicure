import 'package:flutter/material.dart';
import 'package:medicure/Screens/appointment.dart';
import 'Screens/home.dart';
import 'Screens/login.dart';
import 'Screens/signup.dart';
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
      home: AppointmentPage(),
    );
  }
}
