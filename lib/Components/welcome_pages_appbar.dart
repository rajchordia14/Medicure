import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';

class WelcomePagesAppBar extends StatelessWidget {
  final buttonColor;
  final iconColor;
  final trailingColor;
  final trailingGradient;
  final onpressed;
  WelcomePagesAppBar({this.buttonColor, this.iconColor, this.trailingColor, this.trailingGradient,required this.onpressed});
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
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2, bottom: 2),
            child: GestureDetector(
              onTap: onpressed,
              child: Material(
                color: trailingColor,
                elevation: 8.0,
                shape: CircleBorder(),
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: trailingColor,
                    gradient: trailingGradient,
                    shape: BoxShape.circle
                  ),
                  child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/google_icon.png'),
                              ))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
