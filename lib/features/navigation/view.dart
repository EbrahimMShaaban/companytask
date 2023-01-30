import 'dart:io';

import 'package:companytask/features/navigation/state.dart';
import 'package:companytask/features/navigation/widgets/bottom_item.dart';
import 'package:companytask/helpers/colors.dart';
import 'package:companytask/helpers/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../directory/view.dart';
import '../home/view.dart';
import '../profile/view.dart';
import '../settings/view.dart';
import 'controller.dart';

class AppLayout extends StatelessWidget {
  AppLayout({Key? key}) : super(key: key);

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (BuildContext context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            resizeToAvoidBottomInset: false,
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
                        BottomItem(
                          onclick: () {
                            cubit.changeBottomNav(0);

                          },
                          width: cubit.currentIndex == 0
                              ? MediaQueryHelper.sizeFromWidth(context, 13)
                              : MediaQueryHelper.sizeFromWidth(context, 15),
                          path: 'home',
                          heigh: cubit.currentIndex==0?2:0,
                        ),
                        BottomItem(
                          onclick: () {
                            cubit.changeBottomNav(1);
                          },
                          width: cubit.currentIndex == 1
                              ? MediaQueryHelper.sizeFromWidth(context, 13)
                              : MediaQueryHelper.sizeFromWidth(context, 15),
                          path: 'folder',
                          heigh: cubit.currentIndex==1?2:0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BottomItem(
                          onclick: () {
                            cubit.changeBottomNav(2);
                          },
                          width: cubit.currentIndex == 2
                              ? MediaQueryHelper.sizeFromWidth(context, 13)
                              : MediaQueryHelper.sizeFromWidth(context, 15),
                          path: 'setting',
                          heigh: cubit.currentIndex==2?2:0,
                        ),
                        BottomItem(
                          onclick: () {
                            cubit.changeBottomNav(3);
                          },
                          width: cubit.currentIndex == 3
                              ? MediaQueryHelper.sizeFromWidth(context, 13)
                              : MediaQueryHelper.sizeFromWidth(context, 15),
                          path: "person",
                          heigh: cubit.currentIndex==3?2:0,

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
