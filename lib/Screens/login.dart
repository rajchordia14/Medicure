import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/welcome_pages_appbar.dart';
import 'package:medicure/Components/customized_textfield.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;


class LoginPage extends StatelessWidget {



  static String id = 'Login_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: WelcomePagesAppBar(
          buttonColor: Color(0xFF092C37),
          iconColor: Colors.white,
          trailingColor: Color(0xFFF3FBFE),
          trailingGradient: LinearGradient(
              colors: [Color(0xFFF3FBFE), Color(0xFF092C37).withOpacity(0)]),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Expanded(
                flex: 5,
                child: Text(
                  'Welcome\nBack',
                  style: kheadingTextStyle.copyWith(color: Colors.white),
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomizedTextField(
                  onchange: (value){
                      email = value;
                  },
                  title: 'Email',
                  trailingIcon: Icon(
                      Icons.check_circle,
                      color: Colors.black
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomizedTextField(
                  onchange: (value){
                    password = value;
                  },
                  title: 'Password',
                  trailingIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
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
                      color: Color(0xFF092C37),
                      shadowColor: Color(0xFF092C37),
                      shape: CircleBorder(),
                      elevation: 5.0,
                      child: GestureDetector(
                      onTap: ()async{
                        try{
                          final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                          if(user!=null){
                            //TODO: route dalna hai
                            
                          }
                        }
                        catch(e){
                          print(e);
                        }

                          },
                        child: Container(
                          child: Icon(CupertinoIcons.arrow_right, color: Colors.white,size: 40,),
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(56)),
                              gradient: LinearGradient(
                                  colors: [Color(0xFF092C37).withOpacity(0.4), Color(0xFFF3FBFE).withOpacity(0.4)])
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

