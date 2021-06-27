import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';

class CustomizedTextField extends StatelessWidget {
  final title;
  final trailingIcon;
  final keyboardType;
  CustomizedTextField({this.title, this.trailingIcon, this.keyboardType});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.6,
          child: TextField(
            keyboardType: keyboardType,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF092C37),
                fontWeight: FontWeight.bold),
            onChanged: (value) {
              //TODO: Functionality.
            },
            decoration: kTextFieldDecoration.copyWith(
              suffixIcon: trailingIcon,
            ),
          ),
        )
      ],
    );
  }
}
