// ignore_for_file: unnecessary_null_comparison

import 'package:codetechtask/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/func/find_month_name.dart';
import '../../core/components/func/weekday_day_name.dart';
import '../../core/components/theme/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/background_light.png',
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: AppColor.white,
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 70.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  padding: EdgeInsets.symmetric(vertical: 70.h),
                  width: double.infinity,
                  height: 400.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(height: 60.h),
                      StreamBuilder<DateTime>(
                        stream: Stream.periodic(
                            const Duration(seconds: 60), (_) => DateTime.now()),
                        builder: (context, snapshot) {
                          return Text(
                            snapshot.data != null
                                ? "${snapshot.data!.hour} : ${snapshot.data!.minute}"
                                : "${DateTime.now().hour} : ${DateTime.now().minute}",
                            style: textstyle(
                              color: AppColor.clockColor,
                              size: 80.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                      StreamBuilder<DateTime>(
                        stream: Stream.periodic(
                            const Duration(hours: 24), (_) => DateTime.now()),
                        builder: (context, snapshot) {
                          return Column(
                            children: [
                              Text(
                                snapshot.data != null
                                    ? "${snapshot.data!.day} - ${findMonthName(snapshot.data!.month)}"
                                    : "${DateTime.now().day} - ${findMonthName(DateTime.now().month)}",
                                style: textstyle(
                                  color: AppColor.dateColor,
                                  size: 40.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                weekdayDayName(DateTime.now().weekday),
                                style: textstyle(
                                  color: AppColor.dayColor,
                                  size: 40.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/partly_cloudy.png',
                      width: 120.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "+27",
                          style: textstyle(
                              color: AppColor.regionColor, size: 50.sp),
                        ),
                        Text(
                          "Toshkent",
                          style: textstyle(
                              color: AppColor.regionColor, size: 45.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20.h,
          left: MediaQuery.of(context).size.width / 2 - 50.w,
          child: Image.asset(
            'assets/gerb.png',
            height: 150.h,
            width: 100.w,
          ),
        ),
      ],
    );
  }
}
