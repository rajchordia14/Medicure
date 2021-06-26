import 'package:flutter/cupertino.dart';
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
        child: WelcomePagesAppBar(
          imgURL: 'images/google_icon_white.jpg',
          buttonColor: Color(0xFF092C37),
          iconColor: Colors.white,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/sign_in_bg.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: ListView(
            children: [
              SizedBox(height: 14),
              Text(
                'Welcome\nBack',
                style: kheadingTextStyle.copyWith(color: Colors.white),
              ),
              SizedBox(height: 125),
              Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              Opacity(
                opacity: 0.6,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF092C37),
                      fontWeight: FontWeight.bold),
                  onChanged: (value) {
                    //TODO: Functionality.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    suffixIcon: Icon(
                      Icons.check_circle,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Opacity(
                opacity: 0.6,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF092C37),
                      fontWeight: FontWeight.bold),
                  onChanged: (value) {
                    //TODO: Functionality.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  Material(
                    color: Colors.black,
                    shape: CircleBorder(),
                    elevation: 5.0,
                    child: Container(
                      child: Icon(CupertinoIcons.arrow_right, color: Colors.black,size: 40,),
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(56)),
                          gradient: LinearGradient(
                              colors: [Color(0xFF092C37).withOpacity(0.4), Color(0xFFF3FBFE).withOpacity(0.4)])
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
