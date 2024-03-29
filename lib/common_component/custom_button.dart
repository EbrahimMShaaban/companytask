import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text = '',
    this.fontSize = 20,
    this.onPress,
    this.widthButton,
    this.heightButton,
    this.isBold = true,
    this.isIcon = false,
    this.icon,
    this.bgColor,
    this.borderColor,
    this.fontColor,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final bool isBold;

  final VoidCallback? onPress;
  final double? widthButton;
  final double? heightButton;
  final bool isIcon;
  final Widget? icon;
  final Color? bgColor;
  final Color? borderColor;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: widthButton,
        height: heightButton ?? MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          color: bgColor,
          //   gradient: bgColor !=null? null:const LinearGradient(
          //     begin: Alignment.centerLeft,
          //     end: Alignment.centerRight,
          //     colors: [
          //       Color.fromRGBO(31, 43, 70, 1),
          //       Color.fromRGBO(134, 159, 216, 1),
          //     ],
          //   ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: borderColor ?? Colors.white, width: 1),
        ),
        //
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isIcon == true ? icon! : const SizedBox(),
            isIcon == true
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  )
                : const SizedBox(),
            CustomText(
              text: text,
              fontSize: 14,
              color: fontColor ?? Colors.white,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontFamily: 'Tajwal',
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
