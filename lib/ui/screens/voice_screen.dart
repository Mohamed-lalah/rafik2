import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/record_screeen.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});
  static const String routeName = "Voice Screen";

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

           Padding(
            padding: EdgeInsets.only(bottom: 20,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mama",style: AppTheme.inputTextStyle.copyWith(
                    color: AppColors.memory_button_color,
                  fontSize: 14
                )),
                Padding(
                  padding: EdgeInsets.only(left: width*0.5),
                  child: Text("1:02",style: AppTheme.inputTextStyle.copyWith(
                    color: AppColors.memory_button_color,
                    fontSize: 14
                  ),),
                ),
                Icon(Icons.play_arrow,color: AppColors.memory_button_color,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18,left: 12,right: 12),
            child: Divider(
              color: AppColors.subscribeColor,
              thickness: 1,
              height: 2,

            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mama",style: AppTheme.inputTextStyle.copyWith(
                    color: AppColors.memory_button_color,
                    fontSize: 14
                )),
                Padding(
                  padding: EdgeInsets.only(left: width*0.5),
                  child: Text("1:02",style: AppTheme.inputTextStyle.copyWith(
                      color: AppColors.memory_button_color,
                      fontSize: 14
                  ),),
                ),
                Icon(Icons.play_arrow,color: AppColors.memory_button_color,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18,left: 12,right: 12),
            child: Divider(
              color: AppColors.subscribeColor,
              thickness: 1,
              height: 2,

            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mama",style: AppTheme.inputTextStyle.copyWith(
                    color: AppColors.memory_button_color,
                    fontSize: 14
                )),
                Padding(
                  padding: EdgeInsets.only(left: width*0.5),
                  child: Text("1:02",style: AppTheme.inputTextStyle.copyWith(
                      color: AppColors.memory_button_color,
                      fontSize: 14
                  ),),
                ),
                Icon(Icons.play_arrow,color: AppColors.memory_button_color,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18,left: 12,right: 12),
            child: Divider(
              color: AppColors.subscribeColor,
              thickness: 1,
              height: 2,

            ),
          ),
          Spacer(),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Center(child: Image.asset("assets/images/speech1x.png",)),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, RecordScreen.routeName);
                },
                child: Padding(
                  padding:  EdgeInsets.only(left: width*0.46,top: 10),
                  child: Image.asset("assets/images/mic 1x.png",color: Colors.white,),
                ),
              )

            ],
          )




        ],
      ),
    );
  }
}
