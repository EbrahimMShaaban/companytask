import 'package:companytask/common_component/custom_text_field.dart';
import 'package:companytask/helpers/colors.dart';
import 'package:companytask/helpers/constraints.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQueryHelper.sizeFromWidth(context, 1.2),
      height: MediaQueryHelper.sizeFromHeight(context, 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
              width: MediaQueryHelper.sizeFromWidth(context, 1.4),
              height: MediaQueryHelper.sizeFromHeight(context, 16),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "search",
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none)),
              )),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: AppColors.mainColor,
            ),
            height: MediaQueryHelper.sizeFromHeight(context, 16),
            child: const Icon(Icons.search, color: Colors.white),
          ),
        )
      ]),
    );
  }
}
