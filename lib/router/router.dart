// ignore_for_file: unused_local_variable

import 'package:codetechtask/screens/home/home_screen.dart';
import 'package:codetechtask/screens/choose_region/choose_region.dart';
import 'package:flutter/material.dart';

class RouterCont {
  static final RouterCont _inherentce = RouterCont._init();

  static RouterCont get inherentce => _inherentce;

  RouterCont._init();

  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/init':
        return navigator(const ChooseRegion());

      case '/home':
        return navigator(const HomePage());
    }
    // return null;
  }

  MaterialPageRoute navigator(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
