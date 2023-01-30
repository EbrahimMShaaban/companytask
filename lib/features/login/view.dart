import 'package:companytask/core/router/router.dart';
import 'package:companytask/features/login/widgets/text_field.dart';
import 'package:companytask/features/navigation/view.dart';
import 'package:companytask/helpers/colors.dart';
import 'package:companytask/helpers/constraints.dart';
import 'package:flutter/material.dart';

import '../../common_component/custom_button.dart';
import '../../common_component/custom_text_button.dart';
import '../../common_component/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        resizeToAvoidBottomInset: false,
          body: Stack(
        children: [
          Positioned(
              top: -MediaQuery.of(context).size.aspectRatio * 170,
              right: -MediaQuery.of(context).size.aspectRatio * 50,
              child: Image.asset(
                'assets/images/bluecircle.png',
                height: MediaQueryHelper.sizeFromHeight(context, 3),
              )),
          Positioned(
              bottom: -MediaQuery.of(context).size.aspectRatio * 50,
              left: -MediaQuery.of(context).size.aspectRatio * 100,
              child: Image.asset(
                'assets/images/yellowcircle.png',
                height: MediaQueryHelper.sizeFromHeight(context, 4.2),
              )),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Log in",
                        style: TextStyle(
                            color: AppColors.mainColor,fontWeight: FontWeight.bold, fontSize: 30,)),

                  SizedBox(height: 15,),
                    LoginTextField(
                      label: 'Phone number',
                      icon: Icons.phone_android_outlined,
                    ),
                    SizedBox(height: 10),
                    LoginTextField(
                      label: 'Password',
                      icon: Icons.lock_outline,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          onPressed: () {},
                          text: 'Forgot password?',
                          color: Colors.black,
                        )
                      ],
                    ),
                    CustomButton(
                      onPress: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AppLayout()));
                      },
                      isBold: true,
                      bgColor: AppColors.mainColor,
                      text: 'Log in',

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPress: () {},
                      isBold: true,
                      fontColor: AppColors.mainColor,
                      // bgColor: AppColors.mainColor,
                      text: 'Sign up',
                      borderColor: AppColors.mainColor,
                    ),
                    CustomTextButton(
                      onPressed: () {},
                      text: 'Skip',
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
