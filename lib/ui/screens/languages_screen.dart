import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});
  static const String routeName = "LanguageScreen";
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
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/group 1x.png",),
                ),
                SizedBox(width: width*0.3,),
                Expanded(flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60,),
                    child: Text("Language",style: AppTheme.memoriesStyle.copyWith(
                        fontSize: 20, color: AppColors.login_Info_Color)),
                  ),
                ),
                ],

            ),
            SizedBox(height: height*0.02,),
            Divider(
              color: AppColors.login_Info_Color,
              thickness: 0.8,
              height: 1,
            ),
            SizedBox(height: height*0.023,),
            Center(
              child: Text("Arabic",style: AppTheme.languageStyle,
              ),
            ),
            SizedBox(height: height*0.021,),
            Divider(
              color: AppColors.login_Info_Color,
              thickness: 0.3,
              height: 1,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text("English",style: AppTheme.languageStyle),
              ),
            ),
            SizedBox(height: height*0.025,),
            Divider(
              color: AppColors.login_Info_Color,
              thickness: 0.3,
              height: 1,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text("French",style: AppTheme.languageStyle),
              ),
            ),



          ],
        ),
      ),

    );
  }
}
