import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_task_design/screens/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return ScreenUtilInit(
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Job Task Design',
          theme: ThemeData(
            primarySwatch: Colors.blue,
              textTheme: GoogleFonts.interTextTheme(
                  Theme.of(context).textTheme.apply())

          ),
          home: const SplashScreen(),
        );
      },
    );


  }
}


