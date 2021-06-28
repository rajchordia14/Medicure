import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'CancelAndSave.dart';


class SetAndReset extends StatelessWidget {
  const SetAndReset(this.heading);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 36),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.chevron_left,
                  color: kBorderOutlineColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  shadowColor: Colors.black,
                  primary: kBackgroundColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2, top: 40),
              child: Text(
                heading,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 51,
        ),
        Text(
          'Medicine',
          style: kSYMtextStyle,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Container(
              width: 297,
              height: 36,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.all(Radius.circular(6)),
                boxShadow : [
                  BoxShadow(
                      color: kBorderOutlineColor.withOpacity(0.05),
                      offset: Offset(1,4),
                      blurRadius: 8
                  ),
                ],
                color : kBackgroundColor,
                border : Border.all(
                  color: kBorderOutlineColor.withOpacity(0.20),
                  width: 1,
                ),
              )
          ),
        ),
        SizedBox(
          height: 39,
        ),
        Row(
          children: [
            Text(
              'Your Stock',
              style: kSYMtextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(left: 67),
              child: Container(
                  width: 134,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.all(Radius.circular(6)),
                    boxShadow : [
                      BoxShadow(
                          color: kBorderOutlineColor.withOpacity(0.05),
                          offset: Offset(1,4),
                          blurRadius: 8
                      ),
                    ],
                    color : kBackgroundColor,
                    border : Border.all(
                      color: kBorderOutlineColor.withOpacity(0.20),
                      width: 1,
                    ),
                  )
              ),
            ),
          ],
        ),
        SizedBox(
          height: 39,
        ),
        Text(
          'About',
          style: kSYMtextStyle,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
            width: 297,
            height: 72,
            decoration: BoxDecoration(
              borderRadius : BorderRadius.all(Radius.circular(6)),
              boxShadow : [
                BoxShadow(
                    color: kBorderOutlineColor.withOpacity(0.05),
                    offset: Offset(1,4),
                    blurRadius: 8
                ),
              ],
              color : kBackgroundColor,
              border : Border.all(
                color: kBorderOutlineColor.withOpacity(0.20),
                width: 1,
              ),
            )
        ),
        SizedBox(
          height: 72,
        ),
        CancelAndSave(),
      ],
    );
  }
}
