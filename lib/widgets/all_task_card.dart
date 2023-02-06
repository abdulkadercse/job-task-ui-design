import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class AllTaskCard extends StatelessWidget {
  const AllTaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 62.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0).w,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            blurRadius: 5.0,
            offset: const Offset(0, 5),
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-5, 0),
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(5, 0),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(13.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/todolist1.png",
              width: 30.w,
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Online Class Routine", style: cardTitleTextStyle),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Text("Save Date:", style: cardSubTitleTextStyle),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text("10/12/2022", style: cardSubTitleTextStyle),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
