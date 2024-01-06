import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/utlities/app_colors.dart';
import 'package:rafik/ui/utlities/app_theme.dart';

class UploadDone extends StatelessWidget {


  static const String routeName = "UploadDone";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: AppColors.grey,
      height: height * 0.69,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: InkWell(child: Text(
                      "cancel", style: AppTheme.memory_cancel_style,))),
              ),
              SizedBox(width: width * 0.2,),
              Text("Memory Upload ",
                style: AppTheme.memory_Sub_TitleStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                ),),
              Spacer(),
            ],
          ),
          SizedBox(height: height*0.05,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: height*0.01,left: width*0.43,),
                        child: Image.asset("assets/images/Ellipse 1x.png"),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: height*0.15,left: width*0.44,
                        top: height*0.0097),
                        child: const Icon(
                          Icons.check,size: 60,
                          color: AppColors.white,),
                      )
                    ],
                  ),

                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color:AppColors.white,
                      borderRadius: BorderRadius.circular(13)
                    ),
                    width: width*0.79,
                    height: height*0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("add text ",style: AppTheme.inputTextStyle,),
                    )
                  ),
                ),
                Container(
                  padding:  EdgeInsets.fromLTRB(width*0.6, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.login_Button_Color),
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("Confirm",style: AppTheme.memory_Sub_TitleStyle
                        .copyWith(fontWeight: FontWeight.w700,
                      color: AppColors.white),),
                    ),
                  ),
                ),

              ],
            ),


        ],
      ),
    );
  }
}
