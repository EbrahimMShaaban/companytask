import 'package:flutter/material.dart';

import '../../../helpers/constraints.dart';

class BottomItem extends StatelessWidget {
  BottomItem({required this.onclick, required this.width,required this.path,required this.heigh, Key? key})
      : super(key: key);
  Function onclick;
  double width;
  String path;
  double heigh;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 40,
        onPressed: () {
         onclick();
        },
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: heigh,
              width: MediaQueryHelper.sizeFromWidth(context, 12),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/$path.png',
                width: width
              ),
              // Icon(
              //   Icons.home,
              //   size: cubit.currentTab == 0 ? 35 : 25,
              //   color: cubit.currentTab == 0
              //       ? AppColors.white
              //       : AppColors.grey,
              // ),
            ),
          ],
        ));
  }
}
