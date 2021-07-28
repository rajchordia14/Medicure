import 'package:flutter/material.dart';
import 'package:medicure/Blocks/application_block.dart';
import 'package:provider/provider.dart';
import 'package:medicure/Screens/account.dart';
import 'package:medicure/Screens/nearby.dart';
import 'package:medicure/Screens/set_your_medicine.dart';
import 'package:medicure/Screens/signup.dart';
import 'Screens/home.dart';
import 'Screens/login.dart';
import 'Screens/signup.dart';
import 'package:medicure/Components/draggableScroll.dart';
import 'Screens/reset_your_medicine.dart';
import 'constants.dart';
import 'Screens/welcome.dart';

void main() {
  runApp(Medicure());
}

class Medicure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationBlock(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: kBackgroundColor,
          fontFamily: 'Montserrat',
        ),

        initialRoute: NearBy.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          Account.id: (context) => Account(),
          LoginPage.id: (context) => LoginPage(),
          NearBy.id: (context) => NearBy(),
          ResetYourMedicine.id: (context) => ResetYourMedicine(),
          SetYourMedicine.id: (context) => SetYourMedicine(),
          SignUpPage.id: (context) => SignUpPage(), 
        },

       home: SetYourMedicine(),
      ),
    );
  }
}



