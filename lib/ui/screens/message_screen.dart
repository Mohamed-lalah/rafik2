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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Comming Soon ",style: AppTheme.minutesStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 26),)
        ],
      ),
    );
  }
}
