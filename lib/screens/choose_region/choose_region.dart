import 'package:codetechtask/core/components/theme/text_style.dart';
import 'package:codetechtask/core/constants/color_const.dart';
import 'package:codetechtask/cubit/chooseRegion/choose_region_cubit.dart';
import 'package:codetechtask/cubit/chooseRegion/choose_region_state.dart';
import 'package:codetechtask/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

import '../../core/widgets/dropdown_button.dart';

class ChooseRegion extends StatelessWidget {
  const ChooseRegion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChooseRegionCubit, ChooseRegionState>(
      listener: (context, state) {},
      builder: (context, state) {
        return _scaffold(context, state);
      },
    );
  }

  Scaffold _scaffold(BuildContext context, ChooseRegionState state) {
    final watchCubit = context.watch<ChooseRegionCubit>();
    final readCubit = context.read<ChooseRegionCubit>();
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            if (state is ChooseRegionSuccessfuly) {
              return Column(
                children: [
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 200.h,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Image.asset('assets/gerb.png'),
                  ),
                  SizedBox(height: 25.h),
                  basicInput(
                    readCubit,
                    watchCubit,
                    "Viloyatlar",
                    "Viloyatni tanlang",
                    state.regionData.map((e) => e.region!).toList(),
                  ),
                  SizedBox(height: 40.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tuman/shahar",
                          style: textstyle(
                            color: AppColor.regionColor,
                            size: 18.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        CityDropDownButton(
                            watchCubit: watchCubit, readCubit: readCubit),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.clockColor,
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.9,
                        45.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    onPressed: watchCubit.dropdownvalueCity != null
                        ? () {
                            location.write(
                              'location',
                              {
                                "region": watchCubit.dropdownvalueRegion,
                                "city": watchCubit.dropdownvalueCity
                              },
                            );
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/home',
                              (route) => false,
                            );
                          }
                        : null,
                    child: Text(
                      'Kirish',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  )
                ],
              );
            } else if (state is ChooseRegionLoading) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (state is ChooseRegionError) {
              return Center(
                child: Text(
                  state.msg,
                  style: TextStyle(fontSize: 20.sp),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }

  Padding basicInput(ChooseRegionCubit readCubit, ChooseRegionCubit watchCubit,
      String titleName, String hintText, List<String>? data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleName,
            style: textstyle(
              color: AppColor.regionColor,
              size: 18.sp,
            ),
          ),
          SizedBox(height: 10.h),
          DropdownInputButton(
            watchCubit: watchCubit,
            readCubit: readCubit,
            hintText: hintText,
            lstData: data,
          ),
        ],
      ),
    );
  }
}
