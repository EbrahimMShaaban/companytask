import 'package:flutter/material.dart';

import '../../../helpers/constraints.dart';
class SquareBox extends StatelessWidget {
   SquareBox({required this.path,Key? key}) : super(key: key);
  String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        'assets/images/$path.png',
        height: MediaQueryHelper.sizeFromHeight(context, 7),
      ),
    );
  }
}
