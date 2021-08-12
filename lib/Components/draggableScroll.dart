import 'package:flutter/material.dart';
import 'package:medicure/Components/set_and_reset.dart';
import 'package:medicure/constants.dart';

class DragScreen extends StatelessWidget {
  const DragScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.08,
          minChildSize: 0.08,
          //maxChildSize: 0.1,
          builder: (BuildContext context, ScrollController scrollController) {
            return Material(
              elevation: 10,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              // shadowColor: Colors.red,
              child: Container(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return SetAndReset('G');
                    },
                ),
              ),
            );
          },
        ),
    );
  }
}