import 'package:companytask/features/home/controller.dart';
import 'package:companytask/features/home/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  Header(
      {required this.status,
      required this.title,

      Key? key})
      : super(key: key);
  bool status;
  String title;


  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return InkWell(
      onTap: cubit.changView,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            !status
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right_rounded))
                : Container()
          ]),
          !status
              ? Container()
              : IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down))
        ],
      ),
    );
  }
}
