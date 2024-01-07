import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/memory_screen.dart';
import 'package:rafik/ui/utlities/app_colors.dart';
import 'package:rafik/ui/utlities/app_theme.dart';
import 'package:rafik/ui/widgets/list_widget.dart';
import 'package:rafik/ui/widgets/memories_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height * 0.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ListWidget.routeName);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                          left: 12,
                        ),
                        child: Image.asset(
                          "assets/images/group 1x.png",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.3),
                    child: Image.asset("assets/images/name 1x.png"),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, ListWidget.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset("assets/images/alarm 1x.png"),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Hello KHALED",
                        style: AppTheme.helloStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset("assets/images/emoji1x.png"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "My Memories",
                      style: AppTheme.memoriesStyle,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, MemoryScreen.routeName);
                      },
                      child: Text(
                        "See All ",
                        style: AppTheme.memoriesStyle
                            .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Memories(
                        path: "assets/images/photo1(1x).png",
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Memories(
                        path: "assets/images/photo2(1X).png",
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Memories(
                        path: "assets/images/photo3 (1X).png",
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Memories(
                        path: "assets/images/photo2(1X).png",
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Memories(
                        path: "assets/images/photo3 (1X).png",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.001,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "My  Voice Memories",
                      style: AppTheme.memoriesStyle,
                    ),
                    Spacer(),
                    Text(
                      "Add ",
                      style: AppTheme.memoriesStyle
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 148,
                          height: 34,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Mama",
                                  style: AppTheme.inputTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.memory_button_color),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: VerticalDivider(
                                    width: 1,
                                    color: AppColors.memory_button_color,
                                    thickness: 1),
                              ),
                              Spacer(),
                              Text(
                                "1:02",
                                style: AppTheme.inputTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.memory_button_color),
                              ),
                              Spacer(),
                              Icon(
                                Icons.play_arrow,
                                color: AppColors.memory_button_color,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                            border:
                            Border.all(color: AppColors.memory_button_color),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Container(
                          width: 148,
                          height: 34,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Mama",
                                  style: AppTheme.inputTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.memory_button_color),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: VerticalDivider(
                                    width: 1,
                                    color: AppColors.memory_button_color,
                                    thickness: 1),
                              ),
                              Spacer(),
                              Text(
                                "1:02",
                                style: AppTheme.inputTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.memory_button_color),
                              ),
                              Spacer(),
                              Icon(
                                Icons.play_arrow,
                                color: AppColors.memory_button_color,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                            border:
                            Border.all(color: AppColors.memory_button_color),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Container(
                          width: 148,
                          height: 34,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Mama",
                                  style: AppTheme.inputTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.memory_button_color),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: VerticalDivider(
                                    width: 1,
                                    color: AppColors.memory_button_color,
                                    thickness: 1),
                              ),
                              Spacer(),
                              Text(
                                "1:02",
                                style: AppTheme.inputTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.memory_button_color),
                              ),
                              Spacer(),
                              Icon(
                                Icons.play_arrow,
                                color: AppColors.memory_button_color,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                            border:
                            Border.all(color: AppColors.memory_button_color),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Container(
                          width: 148,
                          height: 34,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Mama",
                                  style: AppTheme.inputTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.memory_button_color),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: VerticalDivider(
                                    width: 1,
                                    color: AppColors.memory_button_color,
                                    thickness: 1),
                              ),
                              Spacer(),
                              Text(
                                "1:02",
                                style: AppTheme.inputTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.memory_button_color),
                              ),
                              Spacer(),
                              Icon(
                                Icons.play_arrow,
                                color: AppColors.memory_button_color,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                            border:
                            Border.all(color: AppColors.memory_button_color),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "MY Last Messages",
                      style: AppTheme.memoriesStyle,
                    ),
                    Spacer(),
                    Text(
                      "Add ",
                      style: AppTheme.memoriesStyle
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Ellipse 26.png"),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "Dr.Noguera",
                              style: AppTheme.memoriesStyle.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text("12:37",
                                style: AppTheme.memoriesStyle.copyWith(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                            child: Text(
                              "Semana 1: ",
                              style: AppTheme.memoriesStyle.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0, left: 12),
                            child: Text(
                              "Buenos Dias chicos ,os dejo la trapaja  ",
                              style: AppTheme.memoriesStyle.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  width: 343,
                  height: 125,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.memory_button_color),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
