import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';

class WelcomePagesAppBar extends StatelessWidget {
  final String imgURL;
  final buttonColor;
  final iconColor;
  WelcomePagesAppBar({required this.imgURL, this.buttonColor, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22, right: 22, top: 20),
      child: AppBar(
        toolbarHeight: kAppBarHeight,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 2, bottom: 15),
          child: Material(
            color: buttonColor,
            shape: CircleBorder(),
            elevation: 10.0,
            child: BackButton(
              color: iconColor,
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2, bottom: 1),
            child: Material(
              color: Colors.transparent,
              elevation: 8.0,
              shape: CircleBorder(),
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(imgURL),
                          fit: BoxFit.contain))),
            ),
          )
        ],
      ),
    );
  }
}
