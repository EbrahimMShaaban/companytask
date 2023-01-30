import 'package:companytask/features/home/widgets/circular_box.dart';
import 'package:companytask/features/home/widgets/square_box.dart';
import 'package:flutter/material.dart';

import '../../../core/appStorage/product_model.dart';
import '../../../helpers/constraints.dart';

class ScrollBox extends StatelessWidget {
  ScrollBox(
      {required this.users,
      this.iscircular = false,
      this.israted = false,
      Key? key})
      : super(key: key);
  List<User> users;
  bool iscircular;
  bool israted;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQueryHelper.sizeFromHeight(context, 5),
      //color: Colors.red,
      child: ListView.builder(
          itemCount: users.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              height: MediaQueryHelper.sizeFromHeight(context, 5),
              width: MediaQueryHelper.sizeFromWidth(context, 5),
              child: Column(
                children: [
                  iscircular
                      ? CircularBox(path: users[index].path)
                      : Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: SquareBox(path: users[index].path),
                      ),
                  Text(users[index].name),
                  users[index].rate != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.blueGrey,
                              size: 15,
                            ),
                            Text(users[index].rate ?? ''),
                          ],
                        )
                      : Container()
                ],
              ),
            );
          }),
    );
  }
}


//!
// hhh ?? ''
