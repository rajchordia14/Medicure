import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
class WelcomePagesAppBar extends StatelessWidget {
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
            shape: CircleBorder(),
            elevation: 5.0,
            child: BackButton(
              color: Colors.black,
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
                          image: AssetImage('images/google_icon.png'),
                          fit: BoxFit.contain))),
            ),
          )
        ],
      ),
    );
  }
}
