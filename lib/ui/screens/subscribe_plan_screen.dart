import 'package:flutter/material.dart';
import 'package:rafik/ui/widgets/custom_list_widget.dart';
import 'package:rafik/ui/widgets/list_widget.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class SubscribeBlan extends StatelessWidget {
  static const String routeName = "SubscribeBlan";

  const SubscribeBlan({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var value = -1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ListWidget.routeName);
                },
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: 10, left: 12, right: width * 0.8),
                  child: Image.asset(
                    "assets/images/group 1x.png",
                  ),
                )),
            SizedBox(
              height: height * 0.04,
            ),
            Center(child: Image.asset("assets/images/plan1x.png")),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: DropdownButtonFormField(
                  iconSize: 0,
                  decoration: InputDecoration(
                      focusColor: AppColors.premiumColor,
                      suffixIcon: Icon(
                        Icons.arrow_drop_down_circle_sharp,
                        color: AppColors.premiumColor,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide:
                              BorderSide(color: AppColors.premiumColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                            color: AppColors.premiumColor,
                          ))),
                  value: value,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "intro",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: -1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "text",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "text",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: 2,
                    ),
                  ],
                  onChanged: (value) {}),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: DropdownButtonFormField(
                  iconSize: 0,
                  decoration: InputDecoration(
                      focusColor: AppColors.premiumColor,
                      suffixIcon: Icon(
                        Icons.arrow_drop_down_circle_sharp,
                        color: AppColors.premiumColor,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                            color: AppColors.premiumColor,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                            color: AppColors.premiumColor,
                          ))),
                  value: value,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "Base",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: -1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Base",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Base",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: 2,
                    ),
                  ],
                  onChanged: (value) {}),
            ),
            Container(
              width: 369,
              height: 220,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pro",
                          style: AppTheme.dropDownStyle
                              .copyWith(color: AppColors.proColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.4),
                          child: Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: AppColors.white),
                              child: Center(
                                  child: Text(
                                'Save \$40',
                                style: AppTheme.dollarStyle,
                              ))),
                        ),
                        Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: AppColors.login_Info_Color,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(
                              "Pro account gives you freedom with uploading",
                              style: AppTheme.dollarStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColors.white),
                            ),
                            Text(
                              "HD videos and can also meet all your business",
                              style: AppTheme.dollarStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.45),
                              child: Text(
                                "needs apasih kamu",
                                style: AppTheme.dollarStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          "\$123/month",
                          style: AppTheme.dollarStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.white),
                        ),
                        Spacer(),
                        Container(
                          width: 121,
                          height: 33,
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Text(
                              "Try 1 Month",
                              style: AppTheme.dollarStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: AppColors.login_Info_Color,
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppColors.premiumColor,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: DropdownButtonFormField(
                  iconSize: 0,
                  decoration: InputDecoration(
                      focusColor: AppColors.premiumColor,
                      suffixIcon: Icon(
                        Icons.arrow_drop_down_circle_sharp,
                        color: AppColors.premiumColor,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                            color: AppColors.premiumColor,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                            color: AppColors.premiumColor,
                          ))),
                  value: value,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "Enterprise",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: -1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "EnterPrise",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "EnterPrise",
                        style: AppTheme.dropDownStyle,
                      ),
                      value: 2,
                    ),
                  ],
                  onChanged: (value) {}),
            ),
          ],
        ),
      ),
    );
  }
}
