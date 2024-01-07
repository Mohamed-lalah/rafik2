import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rafik/ui/screens/cbs_screen.dart';

import '../utlities/app_colors.dart';

class InformsScreen extends StatefulWidget {
  InformsScreen({super.key});

  static const String routeName = "Informs Screen";
  static const List<String> langDropdownValues = ["500", "600", "700", "800"];

  @override
  State<InformsScreen> createState() => _InformsScreenState();
}

class _InformsScreenState extends State<InformsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .30,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/back_info.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Background Image
              Positioned(
                top: 50,
                left: 10,
                child: Text(
                  "Ahmed Khaled",
                  style: GoogleFonts.openSans(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .35,
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            style: BorderStyle.solid,
                            width: 0.80),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: const Text('Enter'),
                          items: InformsScreen.langDropdownValues
                              .map((value) => DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  ))
                              .toList(),
                          onChanged: (_) {},
                          isExpanded: true,
                          value: '500',
                        ),
                      ),
                    ),
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: const DecorationImage(
                          image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.white,
                          width: 3.0,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 35,
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      decoration: BoxDecoration(
                        color: Color(0xffE7E7E7),
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            style: BorderStyle.solid,
                            width: 0.80),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: const Text('Medical Result-last weak'),
                          items: InformsScreen.langDropdownValues
                              .map((value) => DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  ))
                              .toList(),
                          onChanged: (_) {},
                          isExpanded: true,
                          value: '500',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text(
                      "Date:  ",
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    Text("20/1/2002",
                        style: GoogleFonts.openSans(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal)),
                  ],
                ))
          ]),
          Container(
            margin: EdgeInsets.only(right: 12, left: 12, top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Test",
                    style: GoogleFonts.baloo2(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text("Result",
                    style: GoogleFonts.baloo2(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text("Normal Range",
                    style: GoogleFonts.baloo2(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12, left: 12, bottom: 6, top: 6),
            child: Divider(
              thickness: 2,
              color: Color(0xff49A4AD),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12, left: 12, top: 6),
            child: Row(
              children: [
                Expanded(
                  flex:5,
                  child: Text("CBC",
                      style: GoogleFonts.baloo2(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  flex: 4,
                  child: Text("14",
                      style:
                          GoogleFonts.baloo2(fontSize: 13, color: Colors.black)),
                ),
                Expanded(
                  flex: 3,
                  child: Text("11 to 8",
                      style:
                          GoogleFonts.baloo2(fontSize: 13, color: Colors.black)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12, left: 12, top: 6),
            child: Row(
              children: [
                Expanded(
                  flex:5,
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, CBSScreen.routeName);
                    },
                    child: Text("CBC",
                        style: GoogleFonts.baloo2(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text("14",
                      style:
                      GoogleFonts.baloo2(fontSize: 13, color: Colors.black)),
                ),
                Expanded(
                  flex: 3,
                  child: Text("11 to 8",
                      style:
                      GoogleFonts.baloo2(fontSize: 13, color: Colors.black)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12, left: 12, top: 6),
            child: Row(
              children: [
                Expanded(
                  flex:5,
                  child: Text("CBC",
                      style: GoogleFonts.baloo2(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  flex: 4,
                  child: Text("14",
                      style:
                      GoogleFonts.baloo2(fontSize: 13, color: Colors.black)),
                ),
                Expanded(
                  flex: 3,
                  child: Text("11 to 8",
                      style:
                      GoogleFonts.baloo2(fontSize: 13, color: Colors.black)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final int x;
  final double? y;
}
