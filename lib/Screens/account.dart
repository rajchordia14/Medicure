import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:flutter/cupertino.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("acc_bg.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter),
          ),
          child: ListView(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
