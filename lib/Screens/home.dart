import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/general_app_bar.dart';
import 'package:medicure/Components/medicine_card.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: GeneralAppBar(),
        ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF66E9E9),
        elevation: 5.0,
        // TODO: Functionality here
        onPressed: (){},
        child: Container(
          height: double.infinity,
            width: double.infinity,
            child: Icon(Icons.add, size: 40.0,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(56)),
                gradient: kGradientColor
            )
        ),
      ),

      body: ListView(
        children: [
          Padding(
            padding: kIntroTextPadding,
            child: Text(
              'It\'s time for\nYour Medicines',
              style: kIntroTextStyle,
            ),
          ),
          MedicineCard(toggle: true),
          MedicineCard(toggle: true),
          MedicineCard(toggle: false),
          MedicineCard(toggle: true),
          MedicineCard(toggle: true)
        ],
      ),

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
          currentIndex: 0,
          selectedItemColor: kSelectedItemColor,
          unselectedItemColor: kUnselectedItemColor,
          showUnselectedLabels: true,
          unselectedLabelStyle: kUnselectedTextStyle,
          onTap: (int index){},
        ),
      ),
    );
  }
}
