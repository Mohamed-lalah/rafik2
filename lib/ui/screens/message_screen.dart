import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});
  static const String routeName = "message Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: Text("Message Screen "),
        elevation: 8,
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("Comming Soon ",style: AppTheme.minutesStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 26),))
        ],
      ),
    );
  }
}
