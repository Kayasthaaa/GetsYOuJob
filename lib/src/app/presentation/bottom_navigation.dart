import 'package:flutter/material.dart';
import 'package:gyj/src/feature/home_screen/home_screen.dart';
import 'package:gyj/src/feature/jobs/jobs_screen.dart';
import 'package:gyj/src/feature/profile/profile_page.dart';
import 'package:gyj/src/feature/saved_screen/saved_screen.dart';

import '../../core/themes/colors.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List screens = [
      const HomeScreenPage(),
      const JobsScreenPage(),
      const SavedPage(),
      const ProfilePageScreen(),
    ];
    return Scaffold(
      body: Container(
        child: screens[currentIndex],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.black45,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          selectedItemColor: AppColor.appColor,
          selectedIconTheme: const IconThemeData(color: AppColor.appColor),
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.business_center,
                size: 30,
              ),
              label: 'Jobs',
              icon: Icon(
                Icons.business_center_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Saved',
              activeIcon: Icon(
                Icons.bookmark,
                size: 30,
              ),
              icon: Icon(
                Icons.bookmark_border_rounded,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                size: 30,
              ),
              label: 'Profile',
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
            ),
          ],
          onTap: (index) {
            setState(
              () {
                currentIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
