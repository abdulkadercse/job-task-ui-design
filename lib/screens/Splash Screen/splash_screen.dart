import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_task_design/const/app_colors.dart';

import 'package:nb_utils/nb_utils.dart';

import '../Bottom Navigration Bar/bottomNavigrationBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> goToHomeScreen() async {
    Future.delayed(const Duration(seconds: 5)).then((value) => {


      const BottomNaviBar().launch(context,isNewTask: true,)

        });
  }

  @override
  void initState() {
    goToHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      body: Center(
        child: CircleAvatar(
          backgroundColor: AppColor.mainColor,
          radius: 80.0.r,
          child: Text(
            "Job Task",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}
