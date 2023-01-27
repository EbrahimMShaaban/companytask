import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    this.text = '',
    this.color,
    this.isunder = false,
    this.onPressed,
    this.alignment,
    this.fontWeight,
    this.textDecoration,
  }) : super(key: key);
  final String text;
  final bool isunder;
  final Color? color;
  final VoidCallback? onPressed;
  final Alignment? alignment;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            decoration: isunder?TextDecoration.underline:textDecoration,
           color: color,
            fontSize: 14,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
