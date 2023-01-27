import 'package:companytask/features/directory/view.dart';
import 'package:companytask/features/navigation/state.dart';
import 'package:companytask/features/settings/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/view.dart';
import '../profile/view.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  int currentTab = 0;
  Widget currentscreen = HomeScreen();
  List<Widget> screen =
  [
    HomeScreen(),
    Directoory(),
    Settings(),
    ProfileScreen()
  ];

   changeBottomNav(int index) {
    print(index);
    currentIndex = index;
    emit(ChangeNavBottomState());
    print('current index is $currentIndex');
    print(' index is $index');
  }

}
