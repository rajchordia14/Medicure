import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/general_app_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.black,
          // TODO: Functionality here
          onPressed: () {},
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Image.asset('images/google_coloured.png'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: CircleBorder(),
              elevation: 5.0,
              side: kAccountBorder,
            ),),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/sign_up_bg.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 36 , top:122),
              child: Text(
                'Create\nAccount',
                style: kheadingTextStyle,
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: kNPELeftPadding,
                  child: Text(
                    'Name',
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
                    decoration:
                    kTextFieldDecoration,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
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
                    decoration:
                    kTextFieldDecoration.copyWith(suffixIcon: Icon(
                      Icons.email,
                    ),),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: kNPELeftPadding,
                  child: Text(
                    'Password',
                    style: TextStyle(

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
                    decoration:
                    kTextFieldDecoration.copyWith(suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),),
                  ),
                ),
                SizedBox(
                  height: 100,
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
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 114,
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      child: Icon(
                        Icons.arrow_right_alt_rounded,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: kNPELeftPadding,
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
