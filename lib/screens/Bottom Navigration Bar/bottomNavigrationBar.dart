import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../const/app_colors.dart';
import '../Home Screen/home_screen.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int _selectedIndex = 0;

  List pages = [
    const HomeScreen(),
    const Center(
      child: Text("Search"),
    ),
    const Center(
      child: Text("Record"),
    ),
    const Center(
      child: Text("Save"),
    ),
    const Center(
      child: Text("Setting"),
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(30.0).r,
              topRight: const Radius.circular(30.0).r),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 14,
                offset: Offset(0.0, -0.4)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.w),
            topRight: Radius.circular(30.w),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: const Color(0xffB4C1C0),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.homeAlt),
                  label: "Home",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.search),
                  label: "Search",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.video),
                  label: "Record",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.bookmark),
                  label: "Save",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  label: "Settings",
                  backgroundColor: Colors.white),
            ],
          ),
        ),
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}
