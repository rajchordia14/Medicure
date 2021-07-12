import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/set_and_reset.dart';
import 'package:medicure/Components/draggableScroll.dart';

class SetYourMedicine extends StatelessWidget {
  const SetYourMedicine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              child: Padding(
                padding: kLeftPadding,
                child: SetAndReset('Set your medicine'),
              ),
            ),
            DragScreen(),
          ],
        ),
      ),
    );
  }
}



