import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:flutter/cupertino.dart';

Icon right_circle = Icon(CupertinoIcons.chevron_right_circle);

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);


  static String id = 'Account_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: EdgeInsets.only(left: 22, right: 22, top: 20),
          child: AppBar(
            toolbarHeight: kAppBarHeight,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: EdgeInsets.only(left: 2, bottom: 15),
              child: Material(
                color: Colors.white,
                shape: CircleBorder(),
                elevation: 10.0,
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/acc_bg.png"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 68),
          child: ListView(
            children: [
              Center(
                child: Material(
                  shape: CircleBorder(),
                  elevation: 5,
                  child: CircleAvatar(
                    radius: 48,
                    child: Image.asset('images/account_icon.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.person),
                title: Text(
                  'Profile',
                  style: kAccListText,
                ),
                trailing: right_circle,
              ),
              ListTile(
                leading: Icon(
                  Icons.phone_in_talk_outlined,
                ),
                title: Text(
                  'Helpline',
                  style: kAccListText,
                ),
                trailing: right_circle,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.question),
                title: Text(
                  'Invite Code',
                  style: kAccListText,
                ),
                trailing: right_circle,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.qrcode),
                title: Text(
                  'QR Code',
                  style: kAccListText,
                ),
                trailing: right_circle,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.person_3),
                title: Text(
                  'About Us',
                  style: kAccListText,
                ),
                trailing: right_circle,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.bubble_right),
                title: Text(
                  'Feedback',
                  style: kAccListText,
                ),
                trailing:right_circle,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.square_arrow_left,
                color: Colors.red,
                ),
                title:Text(
                    'Log Out',
                    style: kAccListText.copyWith(color: Color(0xFFF82F22),),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 32),
                child: Center(
                  child: Text(
                    '© remend 2021',
                    style: TextStyle(
                      fontFamily: 'MuseoModerno',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF04BFBF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
