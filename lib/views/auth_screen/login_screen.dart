import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mirfa_store/consts/consts.dart';
import 'package:mirfa_store/views/auth_screen/signup_screen.dart';
import 'package:mirfa_store/widget_common/app_logo_widget/app_logo_widget.dart';
import 'package:mirfa_store/widget_common/bgContainer_widget.dart';
import 'package:mirfa_store/widget_common/custom_text_widget.dart';

import '../../consts/list.dart';
import '../../widget_common/the_button.dart';
import '../home/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            "Log into $appname".text.white.size(18).fontFamily(bold).make(),
            15.heightBox,
            Column(
              children: [
                CustomTextWidget(title: email, hint: emailHint),
                CustomTextWidget(title: password, hint: passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetpass.text.make(),
                    )),
                5.heightBox,
                // TheButton()
                TheButton(
                        title: login,
                        color: redColor,
                        textColor: whiteColor,
                        onpress: () {
                          Get.to(()=>Home());
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                TheButton(
                    title: signup,
                    color: lightgolden,
                    textColor: redColor,
                    onpress: () {
                      Get.to(()=>SignupScreen());
                    })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index],width: 30,),
                    ),
                  )),
                )

              ],
            )
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
