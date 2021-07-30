//import 'package:firebase/firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicure/Functionalities/google_sign_in.dart';
import 'package:medicure/Screens/home.dart';
import 'package:medicure/constants.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'welcome.dart';
import 'package:medicure/Components/welcome_pages_appbar.dart';
import 'package:medicure/Components/customized_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static String id = 'Signup_Screen';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage> {

  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  late String name;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: WelcomePagesAppBar(
          onpressed: () async {
            final provider = await Provider.of<GoogleSignInProvider>(context,listen: false);
            await provider.googleLogin();
            Navigator.pushNamed(context, HomePage.id);
          },
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
                    title: 'Name',
                    onchange: (value){
                        name = value;
                    }
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
                  onchange: (value){
                   email = value;
                  },

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
                  onchange: (value){
                   password= value;
                  },
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
                      child: GestureDetector(
                        onTap: ()async{
                          try{
                            final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                            if(newUser!=null)
                              {
                                Navigator.pushNamed(context, HomePage.id);
                              }
                          }
                          catch(e){
                            print(e);
                          }
                        },
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
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: GestureDetector(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  onTap: ()
                  {
                    Navigator.pushNamed(context, LoginPage.id);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

