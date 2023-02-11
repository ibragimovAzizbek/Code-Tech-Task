import 'package:codetechtask/cubit/drawer/drawer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'My Drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.sp,
              ),
            ),
          ),
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: context.watch<DrawerCubit>().appMode,
            onChanged: (status) {
              context.read<DrawerCubit>().changeAppMode(status);
            },
          ),
          ListTile(
            title: const Text('Change Location'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/init', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
