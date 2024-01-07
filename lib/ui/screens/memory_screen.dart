import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/upload_photo.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';
import '../widgets/memories_widget.dart';

class MemoryScreen extends StatefulWidget {
  const MemoryScreen({super.key});
  static const String routeName = "MemoryScreen";

  @override
  State<MemoryScreen> createState() => _MemoryScreenState();
}

class _MemoryScreenState extends State<MemoryScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height*0.13,
            ),
            Center(
              child: Text("Memory Recovery Upload ",
                style: AppTheme.memoryTitleStyle,),
            ),

            SizedBox(
              height: height*0.05,
            ),
            Column(
             children: [
               Text("This section is responsible For Visual ",
               style: AppTheme.memory_Sub_TitleStyle),
               Text("Remebering To Help You To Recover ",
                   style: AppTheme.memory_Sub_TitleStyle),
               Text("The Lost Part Of Your Memory",
                   style: AppTheme.memory_Sub_TitleStyle),
             ],
           ),
            SizedBox(height: height*0.04,),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: width*0.05),
                    child: Text("My Memories",style: AppTheme.memoryTitleStyle
                      .copyWith(fontWeight: FontWeight.w600,
                    fontSize: 16),)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.more_vert,color: AppColors.memory_button_color,),
                  onPressed: () {
                    // Handle button press
                  },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Memories(path:"assets/images/photo1(1x).png" ,),
                        SizedBox(width: width*0.02,),
                        Memories(path:"assets/images/photo2(1X).png" ,),
                        SizedBox(width: width* 0.02,),
                        Memories(path:"assets/images/photo3 (1X).png" ,)
                      ],
                    ),
                    SizedBox(height: height*0.013,),
                    Row(
                      children: [
                        Memories(path:"assets/images/photo1(1x).png" ,),
                        SizedBox(width: width*0.02,),
                        Memories(path:"assets/images/photo2(1X).png" ,),
                        SizedBox(width: width* 0.02,),
                        Memories(path:"assets/images/photo3 (1X).png" ,)
                      ],
                    ),
                    SizedBox(height: height*0.013,),
                    Row(
                      children: [
                        Memories(path:"assets/images/photo1(1x).png" ,),
                        SizedBox(width: width*0.02,),
                        Memories(path:"assets/images/photo2(1X).png" ,),
                        SizedBox(width: width* 0.02,),
                        Memories(path:"assets/images/photo3 (1X).png" ,)
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 39,
                    width: 365,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.login_Button_Color),
                        ),
                        onPressed: (){
                          showModalBottomSheet(context: context,
                              isScrollControlled: true,
                              builder: (_) => Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child:UploadPhoto(),
                              )
                          );

                        },
                        child:Row(
                          children: [
                            Text("Upload Photo",style: AppTheme.memory_Sub_TitleStyle
                            .copyWith(
                        fontWeight: FontWeight.w600,
                            color: AppColors.white

                        ),),
                            Spacer(),
                            Icon(Icons.photo_library_outlined,color: AppColors.white,)
                          ],
                        ) ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 40,
                    width: 370,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.login_Button_Color),
                        ),
                        onPressed: (){},
                        child:Row(
                          children: [
                            InkWell(
                              onTap: (){
                                showModalBottomSheet(context: context,
                                    isScrollControlled: true,
                                    builder: (_) => Padding(
                                      padding: MediaQuery.of(context).viewInsets,
                                      child:UploadPhoto(),
                                    )
                                );

                              },
                              child: Text("Take Photo",style: AppTheme.memory_Sub_TitleStyle
                                .copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                                fontSize: 15

                              ),),
                            ),
                            Spacer(),
                            Icon(Icons.camera_alt_outlined,color: AppColors.white,)
                          ],
                        )
                         ),
                  ),
                ),
              ],
            )
          ],
        ),
      )


    );
  }

}
