// ignore_for_file: unnecessary_null_comparison

import 'package:codetechtask/core/constants/color_const.dart';
import 'package:codetechtask/cubit/home/time/time_cubit.dart';
import 'package:codetechtask/cubit/home/time/time_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/func/find_month_name.dart';
import '../../core/components/func/weekday_day_name.dart';
import '../../core/components/theme/text_style.dart';
import '../../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<TimeCubit>().fetchTime();
  }

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
                    child: BlocBuilder<TimeCubit, TimeState>(
                      builder: (context, state) {
                        if (state is TimeSuccussfully) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // SizedBox(height: 60.h),
                              Text(
                                "${timeData!.get('time').hour} : ${timeData!.get('time').minute}",
                                style: textstyle(
                                  color: AppColor.clockColor,
                                  size: 80.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "${timeData!.get('time').day} - ${findMonthName(timeData!.get('time').month)}",
                                    style: textstyle(
                                      color: AppColor.dateColor,
                                      size: 40.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    weekdayDayName(
                                        timeData!.get('time').weekday),
                                    style: textstyle(
                                      color: AppColor.dayColor,
                                      size: 40.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else if (state is TimeError) {
                          return Center(
                            child: Text(
                              state.msg,
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    )),
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
