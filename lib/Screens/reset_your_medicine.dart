import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/set_and_reset.dart';

class ResetYourMedicine extends StatelessWidget {
  const ResetYourMedicine({Key? key}) : super(key: key);


  static String id = 'RYM_Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          child: Padding(
            padding: kLeftPadding,
            child: SetAndReset('Reset your medicine'),
          ),
        ),
      ),
    );
  }
}



