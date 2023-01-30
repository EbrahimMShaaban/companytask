import 'package:companytask/features/home/controller.dart';
import 'package:companytask/features/home/state.dart';
import 'package:companytask/features/home/widgets/scrollable_component.dart';
import 'package:companytask/helpers/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/appStorage/product_model.dart';
import '../../../helpers/text_styles.dart';

class BodyComponent extends StatelessWidget {
   BodyComponent({required this.status,this.isproduct= false,Key? key}) : super(key: key);
  bool status;
   bool isproduct;
  @override
  Widget build(BuildContext context) {


      return status?
      Container(
        //  height: MediaQueryHelper.sizeFromHeight(context, 1.6),

        // color: Colors.red,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Higher rating",
                    style: AppTextStyles.smTitles),
              ],
            ),
            ScrollBox(
              users: isproduct?products:users,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("More completed projects",
                    style: AppTextStyles.smTitles),
              ],
            ),
            ScrollBox(
              users: isproduct?products:usersb,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Category", style: AppTextStyles.smTitles,textAlign: TextAlign.center),
                ],
              ),
            ),
            ScrollBox(
              users: products,

              iscircular: true,
            ),
          ],
        ),
      ):Container();

  }
}
