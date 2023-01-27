import 'dart:io';

import 'package:companytask/features/navigation/state.dart';
import 'package:companytask/helpers/colors.dart';
import 'package:companytask/helpers/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../directory/view.dart';
import '../home/view.dart';
import '../profile/view.dart';
import '../settings/view.dart';
import 'controller.dart';

class AppLayout extends StatefulWidget {
  AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  // List<Widget> screen = [
  int currentIndex = 0;
  int currentTab = 0;
  Widget currentscreen = HomeScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (BuildContext context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            body: PageStorage(
              bucket: bucket,
              child: cubit.currentscreen,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.mainColor,
              child: Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              color: AppColors.background,
              shape: CircularNotchedRectangle(),

              notchMargin: 5,

              child: Container(
                height: MediaQueryHelper.sizeFromHeight(context, 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              cubit.currentscreen = const HomeScreen();
                              cubit.currentTab = 0;
                            });

                          },
                          child: Icon(
                            Icons.home,
                            size: cubit.currentTab == 0 ? 35 : 25,
                            color: cubit.currentTab == 0
                                ? AppColors.white
                                : AppColors.grey,
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              cubit.currentscreen = Directoory();
                              cubit.currentTab = 1;
                            });

                          },
                          child: Icon(
                            Icons.folder,
                            size: cubit.currentTab == 1 ? 35 : 25,
                            color: cubit.currentTab == 1
                                ? AppColors.white
                                : AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              cubit.currentscreen = const Settings();
                              cubit.currentTab = 2;
                            });

                          },
                          child: Icon(
                            Icons.settings,
                            size: cubit.currentTab == 2 ? 35 : 25,
                            color: cubit.currentTab == 2
                                ? AppColors.white
                                : AppColors.grey,
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              cubit.currentscreen = ProfileScreen();
                              cubit.currentTab = 3;
                            });

                          },
                          child: Icon(
                            Icons.person,
                            size: cubit.currentTab == 3 ? 35 : 25,
                            color: cubit.currentTab == 3
                                ? AppColors.white
                                : AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/*
*
* Scaffold(
            body: cubit.screen[cubit.currentIndex],
            bottomNavigationBar: BottomAppBar(
              color: Colors.redAccent,
              shape: CircularNotchedRectangle(),
              //shape of notch
              notchMargin: 3,
              //notche margin between floating button and bottom appbar
              child: Row(
                //children inside bottom appbar
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.folder,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // bottomNavigationBar: BottomNavigationBar(
            //   //backgroundColor: Colors.orange,
            //
            //   selectedItemColor: Colors.red,
            //   currentIndex: cubit.currentIndex,
            //   onTap: (index){
            //     cubit.changeBottomNav(index);
            //   },
            //
            //   items: const [
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.home),
            //       label: ""
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.folder),label: ""
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.settings),label: ""
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.person),label: ""
            //     ),
            //   ],
            // ),

            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.mainColor,
              child: Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          );
* */
