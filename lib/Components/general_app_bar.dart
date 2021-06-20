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
              child: Icon(Icons.search, color: Colors.black54),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: kSearchButtonColor,
                elevation: 5.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
