import 'package:flutter/material.dart';

import '../../../helpers/constraints.dart';

class LoginTextField extends StatelessWidget {
   LoginTextField({required this.label,required this.icon,Key? key}) : super(key: key);
  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Row(
          children: [
            Icon(icon,color: Colors.orangeAccent),
            Container(
              width: MediaQueryHelper.sizeFromWidth(context, 1.3),
              child: TextFormField(
                // cursorWidth: 10,
              ),
            )
          ],
        ),
      ],
    );
  }
}
