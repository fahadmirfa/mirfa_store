import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mirfa_store/consts/consts.dart';
import 'package:mirfa_store/widget_common/app_logo_widget/app_logo_widget.dart';
import 'package:mirfa_store/widget_common/bgContainer_widget.dart';
import 'package:mirfa_store/widget_common/custom_text_widget.dart';

import '../../consts/list.dart';
import '../../widget_common/the_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return BgContainerWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            AppLogoWidget(),
            10.heightBox,
            "Signup into $appname".text.white.size(18).fontFamily(bold).make(),
            15.heightBox,
            Column(children: [
              CustomTextWidget(title: name, hint: nameHint),
              CustomTextWidget(title: email, hint: emailHint),
              CustomTextWidget(title: password, hint: passwordHint),
              CustomTextWidget(title: retypepass, hint: retypepassHint),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetpass.text.make(),
                  )),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                      checkColor: whiteColor,
                      activeColor: redColor,
                      value: isCheck,
                      onChanged: (newValue) {
                      setState(() {
                        isCheck = newValue;
                      });
                      }),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: termsConditions,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: privacypolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                    ])),
                  ),
                ],
              ),
              5.heightBox,
              TheButton(
                      title: signup,
                      color: isCheck == true ? redColor : lightGrey,
                      textColor: whiteColor,
                      onpress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(
                      fontFamily: regular,
                      color: fontGrey,
                    )),
                TextSpan(
                    text: login,
                    style: TextStyle(
                      fontFamily: regular,
                      color: redColor,
                    )),
              ])).onTap(() {
                Get.back();
              })
            ])
                .box
                .white
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .rounded
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
