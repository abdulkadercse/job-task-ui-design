import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_task_design/const/app_colors.dart';
import '../../style/style.dart';
import '../../widgets/all_task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> toDoListIcons = [
    "assets/todolist1.png",
    "assets/todolist2.png",
    "assets/todolist3.png",
  ];
  List<String> toDoListTitles = [
    "Online Class Routine",
    "Office Work List",
    "Day Task",
  ];

  List<String> toDoListSaveDate = [
    "Save Date:",
    "Save Date:",
    "Save Date:",
  ];

  List<String> toDoListDates = [
    "10/12/2022",
    "15/12/2022",
    "15/12/2022",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F3F3),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: const Radius.circular(40.0).r,
                          bottomLeft: const Radius.circular(40.0).r),
                      color: AppColor.mainColor,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 15,
                    right: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Habib 👋",
                              style: titleTextStyle,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text("Let’s explore your notes",
                                style: subTitleTextStyle),
                          ],
                        ),
                        Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30).r,
                              border: Border.all(
                                  color: const Color(0xff24966D), width: 2.w),
                              image: const DecorationImage(
                                  image: AssetImage("assets/profile.png"))),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 15,
                    right: 13,
                    top: 86,
                    child: Container(
                      width: 330.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15).w,
                        color: AppColor.primaryColor,
                        border: Border.all(color: Colors.white10, width: 1.w),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                        ).r,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome to TickTick Task",
                                style:
                                    titleTextStyle.copyWith(fontSize: 14.sp)),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              "Your one-stop app for task management. Simplify,\n track, and accomplish tasks with ease.",
                              style: subTitleTextStyle,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 109.w,
                                  height: 31.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70).w,
                                      color: AppColor.buttonColor,
                                      border: Border.all(
                                        color: Colors.white30,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Watch Video",
                                        style: subTitleTextStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Transform.rotate(
                                  angle: -0.28,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 2.02,
                                    ).r,
                                    child: Image.asset(
                                      "assets/todo.png",
                                      width: 50.w,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    right: 13,
                    top: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reminder Task",
                          style: titleTextStyle.copyWith(
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          "See All",
                          style: subTitleTextStyle.copyWith(
                            color: Colors.white70,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: 15,
                      right: 13,
                      top: 290,
                      child: SizedBox(
                        height: 91.h,
                        child: ListView.builder(
                            clipBehavior: Clip.none,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 10).r,
                                child: Container(
                                  width: 139.w,
                                  height: 91.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10).w,
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 2.0,
                                        offset: Offset(0.0, 0.75),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10).r,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          toDoListIcons[index],
                                          width: 36.w,
                                          height: 32.h,
                                        ),
                                        SizedBox(
                                          height: 7.h,
                                        ),
                                        Text(
                                          toDoListTitles[index],
                                          style: cardTitleTextStyle,
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              toDoListSaveDate[index],
                                              style: cardSubTitleTextStyle,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              toDoListDates[index],
                                              style: cardSubTitleTextStyle
                                                  .copyWith(
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ))
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("All Tasks",
                            style: titleTextStyle.copyWith(
                              fontSize: 14.sp,
                              color: const Color(0xff042E2B),
                            )),
                        Text(
                          "See All",
                          style: subTitleTextStyle.copyWith(
                            color: const Color(0xff042E2B),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const AllTaskCard(),
                    SizedBox(
                      height: 10.h,
                    ),
                    const AllTaskCard(),
                    SizedBox(
                      height: 10.h,
                    ),
                    const AllTaskCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
