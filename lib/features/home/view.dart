import 'package:companytask/core/appStorage/product_model.dart';
import 'package:companytask/features/home/controller.dart';
import 'package:companytask/features/home/state.dart';
import 'package:companytask/features/home/widgets/body.dart';
import 'package:companytask/features/home/widgets/header.dart';
import 'package:companytask/features/home/widgets/scrollable_component.dart';
import 'package:companytask/features/home/widgets/search_box.dart';
import 'package:companytask/helpers/colors.dart';
import 'package:companytask/helpers/constraints.dart';
import 'package:companytask/helpers/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool first = true;

  // bool second = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeCubit(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
          children: [
            Container(
              height: MediaQueryHelper.sizeFromHeight(context, 3.5),
              width: double.infinity,
              color: AppColors.background,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 10,
                        left: MediaQueryHelper.sizeFromWidth(context, 8.5),
                        right: MediaQueryHelper.sizeFromWidth(context, 8.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Image.asset(
                          'assets/images/notification.png',
                          //height: 20,
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  const SearchBox()
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQueryHelper.sizeFromHeight(context, 1.23),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      )),
                  child: BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                    var cubit = HomeCubit.get(context);
                    return ListView(
                      children: [
                        Padding(
                          padding:const EdgeInsets.only(left: 16,top: 16,bottom: 16),
                          child: Column(children: [
                            Header(
                              status: cubit.first,
                              title: 'Product',

                            ),
                            BodyComponent(status: cubit.first,isproduct: true,

                            )
                          ]),
                        ),
                        Container(
                          padding:const EdgeInsets.only(left: 16,top: 16,bottom: 16),
                          decoration:const  BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(14),
                              topLeft: Radius.circular(14)
                            ),

                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 8
                              )
                            ]
                          ),
                          child: Column(children: [
                            Header(
                              status: cubit.second,
                              title: 'Freelancer',
                            ),
                            BodyComponent(status: cubit.second,isproduct: false,)

                          ]),
                        ),
                      ],
                    );
                  })),
            ),
          ],
        )));
  }
}

/*
*
* children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("Higher rating",
                                  style: AppTextStyles.smTitles),
                            ],
                          ),
                          ScrollBox(
                            users: users,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("More completed projects",
                                  style: AppTextStyles.smTitles),
                            ],
                          ),
                          ScrollBox(
                            users: usersb,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("Category", style: AppTextStyles.smTitles),
                            ],
                          ),
                          ScrollBox(
                            users: products,

                            iscircular: true,
                          ),
                        ],
* */
