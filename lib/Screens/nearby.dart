import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:flutter/cupertino.dart';

class NearBy extends StatelessWidget {
  //const NearBy({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,

      bottomNavigationBar: Theme(
        data: ThemeData(
          backgroundColor: kBackgroundColor,
        ),
        child: BottomNavigationBar(
          elevation: 5.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar),
              label: 'Appointments',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/parental-control.png', height: 25),
              label: 'Parental',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.map),
              label: 'Nearby',
            ),
          ],
          currentIndex: 3,
          selectedItemColor: kSelectedItemColor,
          unselectedItemColor: kUnselectedItemColor,
          showUnselectedLabels: true,
          unselectedLabelStyle: kUnselectedTextStyle,
          onTap: (int index) {},
        ),
      ),
    );
  }
}


// <!--       &lt;!&ndash; TODO: Add your API key here &ndash;&gt;-->
// <!--       <meta-data android:name="com.google.android.geo.API_KEY"-->
// <!--           android:value="YOUR-KEY-HERE"/>-->
