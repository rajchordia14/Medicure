import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MedicineCard extends StatelessWidget {
  final bool toggle;

  MedicineCard({required this.toggle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kMedCardOutsidePadding,
      child: Container(
        padding: kMedCardInsidePadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amifostine',
                    style: kMedNameTextStyle,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Elementum volutpat maecenas est tincidunt',
                    style: kMedDescriptionTextStyle,
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Left: 12',
                    style: kMedCounterTextStyle,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 40,
                  child: VerticalDivider(
                    color: Colors.cyan,
                    thickness: 1.5,
                  )
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '09:42',
                        style: kAlarmTimerTextStyle,
                      ),
                      Text(
                        ' PM',
                        style: kTimerMeridiemTextStyle,
                      )
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Mon, Tue, Wed, Thu...',
                    style: kWeekDaysTextStyle,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: FlutterSwitch(
                width: 40,
                height: 22,
                padding: 2.0,
                toggleSize: 20.0,
                value: toggle,
                onToggle: (bool val) {},
                activeColor: Color(0xFF04BFBF),
                inactiveColor: Color(0x77092C37),
              ),
            )
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
            ]
        ),
      ),
    );
  }
}