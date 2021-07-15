import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/welcome_pages_appbar.dart';
import 'package:medicure/Components/customized_textfield.dart';

class SignUpPage extends StatelessWidget {


  static String id = 'Signup_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: WelcomePagesAppBar(
          buttonColor: Colors.white,
          iconColor: Colors.black,
          trailingColor: Color(0xFF092C37),
          trailingGradient: LinearGradient(
            colors: [Color(0xFFF3FBFE).withOpacity(0), Color(0xFF092C37)]
          ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Expanded(
                flex: 4,
                child: Text(
                  'Create\nAccount',
                  style: kheadingTextStyle,
                ),
              ),
              Expanded(
                flex: 4,
                child: CustomizedTextField(
                  title: 'Name'
                ),
              ),
              Expanded(
                flex: 4,
                child: CustomizedTextField(
                  title: 'Email',
                  trailingIcon: Icon(
                      Icons.check_circle,
                      color: Colors.black
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Expanded(
                flex: 4,
                child: CustomizedTextField(
                  title: 'Password',
                  trailingIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
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
                      color: Color(0xFFF3FBFE),
                      shape: CircleBorder(),
                      shadowColor: Color(0xFFF3FBFE).withOpacity(0.2),
                      elevation: 5.0,
                        child: Container(
                          child: Icon(CupertinoIcons.arrow_right, color: Color(0xFF092C37),size: 40,),
                          width: 96,
                          height: 96,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3FBFE),
                                borderRadius: BorderRadius.all(Radius.circular(56)),
                                gradient: LinearGradient(
                                    colors: [Color(0xFFF3FBFE).withOpacity(0.4), Color(0xFF092C37).withOpacity(0.01)])
                            ),
                        ),
                      ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
