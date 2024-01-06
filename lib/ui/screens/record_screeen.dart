import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});
  static const String routeName = "Record Screen";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: height*0.1,),
          Center(
            child: Text("Voice Reminder Section",style: AppTheme.memoriesStyle.copyWith(
                fontSize: 22,
                color: AppColors.login_Info_Color

            ),),
          ),
          SizedBox(height: height*0.03,),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Divider(
              color: AppColors.login_Button_Color,
              thickness: 2,
              height: 2,

            ),
          ),
          SizedBox(height: height*0.2,),
          Image.asset("assets/images/voice 1x.png"),
          SizedBox(height: height*0.05,),
          Center(child: Text("0:14",style: AppTheme.minutesStyle,)),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50,left: 14,right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/rect1x.png"),
                Image.asset("assets/images/record 1x.png"),
                Container(
                  width:26 ,
                  height: 26,
                  color: AppColors.rectColor,
                )
              ],
            ),
          )
          
        ],
      ),

    );
  }
}
