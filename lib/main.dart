import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medicure/Functionalities/google_sign_in.dart';
import 'package:medicure/Screens/account.dart';
import 'package:medicure/Screens/set_your_medicine.dart';
import 'package:medicure/Screens/signup.dart';
import 'package:provider/provider.dart';
import 'Blocks/application_blocks.dart';
import 'Screens/home.dart';
import 'Screens/login.dart';
import 'Screens/nearby.dart';
import 'Screens/signup.dart';
import 'Screens/reset_your_medicine.dart';
import 'constants.dart';
import 'Screens/welcome.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Medicure());
}
class Medicure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> GoogleSignInProvider()),
        ChangeNotifierProvider(create: (context) => ApplicationBlock()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: kBackgroundColor,
          fontFamily: 'Montserrat',
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: NearBy.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          Account.id: (context) => Account(),
          LoginPage.id: (context) => LoginPage(),
          NearBy.id: (context) => NearBy(),
          WelcomePage.id:(context) => WelcomePage(),
          ResetYourMedicine.id: (context) => ResetYourMedicine(),
          SetYourMedicine.id: (context) => SetYourMedicine(),
          SignUpPage.id: (context) => SignUpPage(),
        },
      ),
    );
  }
}
