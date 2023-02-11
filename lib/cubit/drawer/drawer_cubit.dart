import 'package:flutter_bloc/flutter_bloc.dart';

import 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerInitial());

  bool appMode = false;

  changeAppMode(bool status) {
    appMode = status;
    emit(DrawerInitial());
  }
}
