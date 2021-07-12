import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/general_app_bar.dart';
import 'package:medicure/Components/medicine_card.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18,bottom: 18,left: 3,right: 3),
      child: Container(
        padding: kMedCardInsidePadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'June 16',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Wednesday',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dr. Cameron',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '+91 77278 40153',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '09:42',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      'PM',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 36,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {  },
                  padding: EdgeInsets.all(0),
                  icon: Icon(CupertinoIcons.ellipsis_vertical),
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: kMedCardBorderRadius,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            image: DecorationImage(
              image: AssetImage("images/appointment_bushes.png"),
              colorFilter: ColorFilter.mode(Color(0xffF3FBFE).withOpacity(0.6), BlendMode.srcOver),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomRight,
            )
        ),
      ),
    );
  }
}