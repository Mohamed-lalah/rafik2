import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/languages_screen.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class CustomListWidget extends StatelessWidget {
  static const String routeName = "CustomListWidget";


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: height*0.1,),
            Padding(
              padding:  EdgeInsets.only(bottom:10,left: 12,right: width*0.8),
              child: Image.asset("assets/images/group 1x.png",),
            ),
            SizedBox(height: height*0.02,),
            Center(
              child: InkWell(
                onTap: (){

                },
                child: Text("Language",style: AppTheme.memoriesStyle.copyWith(
                    fontSize: 20, color: AppColors.login_Info_Color
                ),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Divider(
              color: AppColors.login_Info_Color,
              thickness: 0.3,
              height: 1,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: InkWell(
                  onTap: (){

                  },
                  child: Text("Memory Coverage",style: AppTheme.memoriesStyle.copyWith(
                      fontSize: 20, color: AppColors.login_Info_Color
                  ),),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Divider(
              color: AppColors.login_Info_Color,
              thickness: 0.3,
              height: 1,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: InkWell(
                  onTap: (){
                  },
                  child: Text("Voice Reminder",style: AppTheme.memoriesStyle.copyWith(
                      fontSize: 20, color: AppColors.login_Info_Color
                  ),),
                ),
              ),
            ),
            SizedBox(height: height*0.011,),
            Divider(
              color: AppColors.login_Info_Color,
              thickness: 0.3,
              height: 1,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: InkWell(
                  onTap: (){
                  },
                  child: Text("About us",style: AppTheme.memoriesStyle.copyWith(
                      fontSize: 20, color: AppColors.login_Info_Color
                  ),),
                ),
              ),
            ),

          ],
        ),
      ),

    );


  }
}
