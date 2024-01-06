import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/upload_done.dart';
import 'package:rafik/ui/utlities/app_colors.dart';
import 'package:rafik/ui/utlities/app_theme.dart';

class UploadPhoto extends StatefulWidget {


  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height:height*0.679,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: height*0.024,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: InkWell(child: Text("cancel",style: AppTheme.memory_cancel_style,))),
                ),
                SizedBox(width: width*0.2,),
                Text("Memory Upload ",style: AppTheme.memory_Sub_TitleStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700
                ),),
                Spacer(),

              ],
            ),
            SizedBox(height: height*0.01,),
            Stack(
              children: [
                Image.asset("assets/images/Rectangle 1x.png"),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                      showModalBottomSheet(context: context,
                          isScrollControlled: true,
                          builder: (_) => Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child:UploadDone(),
                          )
                      );
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.49,left: width*0.43,),
                        child: Image.asset("assets/images/Ellipse 1x.png"),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.511,left: width*0.47,),
                        child: const Icon(
                          Icons.camera_alt_outlined,size: 40,
                          color: AppColors.white,),
                      )
                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
