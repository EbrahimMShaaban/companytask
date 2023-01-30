import 'package:flutter/material.dart';

class CircularBox extends StatelessWidget {
  CircularBox({required this.path, Key? key}) : super(key: key);
  String path;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(
        'assets/images/$path.png',
      ),
    );
  }
}
