import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/welcome_pages_appbar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: WelcomePagesAppBar(
          imgURL: 'images/google_icon.png',
          buttonColor: Colors.white,
          iconColor: Colors.black,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/sign_up_bg.png"),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: ListView(
            children: [
              SizedBox(height: 3),
              Text(
                'Create\nAccount',
                style: kheadingTextStyle,
              ),
              SizedBox(height: 30),
              Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              Opacity(
                opacity: 0.6,
                child: TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF092C37),
                      fontWeight: FontWeight.bold),
                  onChanged: (value) {
                    //TODO: Functionality.
                  },
                  decoration: kTextFieldDecoration
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Email',
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
              SizedBox(height: 4),
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
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Material(
                    shape: CircleBorder(),
                    elevation: 5.0,
                      child: Container(
                        child: Icon(CupertinoIcons.arrow_right, color: Colors.black,size: 40,),
                        width: 96,
                        height: 96,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(56)),
                              gradient: LinearGradient(
                                  colors: [Color(0xFFF3FBFE).withOpacity(0.4), Color(0xFF092C37).withOpacity(0.4)])
                          ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 38),
              Text(
                'Sign in',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
