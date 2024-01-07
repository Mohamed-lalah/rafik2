import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/home_screen.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';
import 'login_screeen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String routeName = "Register";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primiaryLogin,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp_img.png"),
            const SizedBox(height:1),
            Padding(
              padding:  EdgeInsets.only(right: width*0.35),
              child: Text("Please Enter Your Information",style:AppTheme.loginInfostyle),
            ),

            Container(
              width: 376,
              height: 58,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:  TextField(
                decoration: InputDecoration(
                    fillColor: AppColors.white,
                    filled: true,
                    hintText: "Mohamed",
                    hintStyle: AppTheme.loginLabelStyle.copyWith(color: AppColors.login_hint_Color),

                    border: OutlineInputBorder(
                    ),
                    labelText:"Name",
                    labelStyle:AppTheme.loginLabelStyle


                ),
              ),
            ),
            Container(
              width: 376,
              height: 58,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:  TextField(
                decoration: InputDecoration(
                    fillColor: AppColors.white,
                    filled: true,
                    hintText: "ahmed@gmail.com",
                    hintStyle: AppTheme.loginLabelStyle.copyWith(color: AppColors.login_hint_Color),

                    border: OutlineInputBorder(
                    ),
                    labelText: "Email",
                    labelStyle:AppTheme.loginLabelStyle



                ),
              ),
            ),
            Container(
              width: 376,
              height: 58,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:  TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,
                      color: AppColors.login_hint_Color,),
                    fillColor: AppColors.white,
                    filled: true,
                    hintText: "************",
                    hintStyle:  AppTheme.loginLabelStyle.copyWith(color: AppColors.login_hint_Color),

                    border: OutlineInputBorder(
                    ),
                    labelText:"Password",
                    labelStyle:AppTheme.loginLabelStyle


                ),
              ),
            ),
            Container(
              width: 376,
              height: 58,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:  TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,
                      color: AppColors.login_hint_Color,),
                    fillColor: AppColors.white,
                    filled: true,
                    hintText: "**************",
                    hintStyle:  AppTheme.loginLabelStyle.copyWith(color: AppColors.login_hint_Color),

                    border: OutlineInputBorder(
                    ),
                    labelText: "Confirm Password",
                    labelStyle:AppTheme.loginLabelStyle



                ),
              ),
            ),
            SizedBox(height: 0.02,),
            Container(
              height: 39,
              width: 365,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.login_Button_Color),
                  ),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                  },
                  child:Text("Register",style: AppTheme.login_Elevated_Button,) ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Already have account ? ",
                  style:AppTheme.row_Small_Details,),
                TextButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  },
                  child: Text("Log in  ",style: AppTheme.smallDetails.copyWith(
                      color: AppColors.login_Button_Color,
                      decorationColor: AppColors.login_Button_Color
                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By continouing , you agree to our ",
                  style: AppTheme.row_Small_Details,),
                Text("Terms of Service",style: AppTheme.smallDetails,),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Read Our ",
                  style: AppTheme.row_Small_Details,),
                Text(" Privacy Policy ",style: AppTheme.smallDetails,),
              ],
            ),

          ]),
    );
  }
}
