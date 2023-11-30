// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/chooseRegion/choose_region_cubit.dart';

class DropdownInputButton extends StatelessWidget {
  const DropdownInputButton({
    super.key,
    required this.watchCubit,
    required this.readCubit,
    required this.hintText,
    required this.lstData,
  });

  final String hintText;
  final List<String>? lstData;
  final ChooseRegionCubit watchCubit;
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
        fillColor: Colors.cyan,
      ),
      dropdownColor: Colors.cyan,
      items: lstData != null
          ? lstData!.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList()
          : [
              const DropdownMenuItem(
                value: "Viloyat tanlanmagan",
                child: Text("Viloyat tanlanmagan"),
              ),
            ],
      onChanged: (String? newValue) {
        readCubit.changeRegion(newValue!);
      },
    );
  }
}

class CityDropDownButton extends StatelessWidget {
  const CityDropDownButton({
    super.key,
    required this.watchCubit,
    required this.readCubit,
  });

  final ChooseRegionCubit watchCubit;
  final ChooseRegionCubit readCubit;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      menuMaxHeight: MediaQuery.of(context).size.height * 0.7,
      hint: const Text("District/City"),
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
        fillColor: Colors.cyan,
      ),
      dropdownColor: Colors.cyan,
      items: watchCubit.cityOfUzbekistan != null
          ? watchCubit.cityOfUzbekistan!
              .map((e) => e.city!)
              .toList()
              .map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList()
          : [
              const DropdownMenuItem(
                value: "Region not selected",
                child: Text("Region not selected"),
              ),
            ],
      onChanged: (String? newValue) {
        readCubit.changeCity(newValue!);
      },
    );
  }
}
