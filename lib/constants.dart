import 'package:flutter/material.dart';

//<------General Theme------>
const kBackgroundColor = Color(0xFFF3FBFE);

//<------AppBar related constants------>

//Paddings
const kAppBarPadding = EdgeInsets.only(top: 20.0, left: 12.0, right: 12.0);
const kAccountButtonPadding = EdgeInsets.all(5.0);
const kSearchButtonPadding = EdgeInsets.only(top: 8.0, bottom: 9.0, right: 5.0);

//Colors
const kSearchButtonColor = Color(0xCC66E9E9);
const kAccountButtonBgColor = Color(0xCCE0E0E0);

//TextStyles
const kAppBarTitleTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 18.0
);

//Borders
const kAccountBorder = BorderSide(width: 2.5, color: Color(0xFF66E9E9));

//Others
const kAppBarHeight = 80.0;


//<------Home page related Constants------>

//Paddings

const kIntroTextPadding = EdgeInsets.only(top: 10.0, left: 24.0);

//TextStyles
const kIntroTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500
);


//<------Constants related to Medicine Card------>

//Paddings
const kMedCardOutsidePadding = EdgeInsets.only(right: 6.0, top: 15.0);
const kMedCardInsidePadding = EdgeInsets.symmetric(
    horizontal: 24.0, vertical: 24.0
);

//TextStyles
const kMedNameTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0
);
const kMedDescriptionTextStyle = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w200
);
const kMedCounterTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13.0
);
const kAlarmTimerTextStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold
);
const kTimerMeridiemTextStyle = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500
);
const kWeekDaysTextStyle = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500
);

//Borders
const kMedCardBorderRadius = BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(15.0),
    bottomRight: Radius.circular(20.0),
    bottomLeft: Radius.circular(15.0)
);


//<------Bottom Navigation Bar------>

//Colors
const kSelectedItemColor = Colors.black;
const kUnselectedItemColor = Colors.blueGrey;

//TextStyles
const kUnselectedTextStyle = TextStyle(
    color: Colors.blueGrey
);
