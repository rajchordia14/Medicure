import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';

class CancelAndSave extends StatelessWidget {
  const CancelAndSave({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(8, 44, 55, 0.20000000298023224),
                  offset: Offset(4, 4),
                  blurRadius: 8)
            ],
            color: Color(0xFFFFF2FAFD),
            border: Border.all(
              color: Color(0xFF04BFBF),
              width: 1,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 27, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'CANCEL',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height: 1.5
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 29,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: kGradientColor,
            borderRadius: BorderRadius.all(Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(8, 44, 55, 0.20000000298023224),
                  offset: Offset(4, 4),
                  blurRadius: 8)
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 41, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'SAVE',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}