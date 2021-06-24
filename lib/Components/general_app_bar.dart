import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';

class GeneralAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kAppBarPadding,
      child: AppBar(
        toolbarHeight: kAppBarHeight,
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          'Hello, Alison!',
          style: kAppBarTitleTextStyle,
        ),
        leading: Padding(
          padding: kAccountButtonPadding,
          child: ElevatedButton(
            onPressed: () {},
            child: Image.asset('images/user.png'),
            style: ElevatedButton.styleFrom(
                primary: kAccountButtonBgColor,
                shape: CircleBorder(),
                elevation: 5.0,
                side: kAccountBorder,
            )
          ),
        ),
        actions: [
          Padding(
            padding: kSearchButtonPadding,
            child: ElevatedButton(
              
              onPressed: () {},
              child: Container(
                height: double.infinity,
                  width: 41,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(56)),
                      gradient: kGradientColor
                  ),
                  child: Icon(Icons.search, color: Color(0xFF092C37).withOpacity(0.6))
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.transparent,//kSearchButtonColor.withOpacity(0.018),
                elevation: 5.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
