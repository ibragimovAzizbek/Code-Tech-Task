// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/chooseRegion/choose_region_cubit.dart';

class DropdownInputButton extends StatelessWidget {
  const DropdownInputButton({
    super.key,
    required this.readCubit,
    required this.hintText,
    required this.lstData,
  });

  final String hintText;
  final List<String> lstData;
  final ChooseRegionCubit readCubit;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text(hintText),
      borderRadius: BorderRadius.circular(16.r),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
        filled: true,
        fillColor: Colors.greenAccent,
      ),
      dropdownColor: Colors.greenAccent,
      items: lstData.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (String? newValue) {
        readCubit.changeRegion(newValue!);
      },
    );
  }
}
