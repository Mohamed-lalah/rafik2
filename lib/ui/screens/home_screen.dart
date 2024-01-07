import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/emergencty_tab_screen.dart';
import 'package:rafik/ui/screens/home_tab.dart';
import 'package:rafik/ui/screens/informs_screen.dart';
import 'package:rafik/ui/screens/login_screeen.dart';
import 'package:rafik/ui/screens/message_screen.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currenttabindex = 0;

  List<Widget> tabs = [
    HomeTab(),
    EmergencyTab(),
    InformsScreen(),
    MessageScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNav(),
      body: tabs[currenttabindex],
    );
  }

  Widget buildBottomNav() => Theme(
      data: Theme.of(context)
          .copyWith(canvasColor:AppColors.white),
      child: BottomNavigationBar(
        selectedItemColor: AppColors.login_Info_Color,
        unselectedItemColor: AppColors.navColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 10,
        selectedLabelStyle: AppTheme.selectedItemStyle,
        unselectedLabelStyle:
            AppTheme.selectedItemStyle.copyWith(color: AppColors.navColor),
        currentIndex: currenttabindex,
        onTap: (index) {
          currenttabindex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home 1x.png")), label: "Home"),
          BottomNavigationBarItem(
              icon:ImageIcon(AssetImage("assets/images/setting1x.png")),
              label: "Emergency"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/informs 1x.png")),
              label: "Inform"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/message 1x.png")),
              label: "Message"),
        ],
      ));
}
