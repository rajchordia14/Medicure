import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/welcome_pages_appbar.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: WelcomePagesAppBar(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/sign_in_bg.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topLeft)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 36, top: 136),
              child: Text(
                'Welcome\nBack',
                style: kheadingTextStyle.copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 156,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: kNPELeftPadding,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: kNPELeftRightPadding,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      //TODO: Functionality.
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      suffixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: kNPELeftPadding,
                  child: Text(
                    'Password',
                    style: TextStyle(),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: kNPELeftRightPadding,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      //TODO: Functionality.
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 74,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: kNPELeftPadding,
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 114,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.arrow_right_alt_rounded,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: kNPELeftPadding,
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Padding(
                      padding: kNPELeftPadding,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
