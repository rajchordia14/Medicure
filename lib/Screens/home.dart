import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:medicure/Components/general_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: GeneralAppBar(),
        ),
    );
  }
}
