import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/routes/app_routes.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

import '../../util/color_category.dart';
import '../../util/constant_widget.dart';

// ignore: must_be_immutable
class TabSignUp extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var pController;

  TabSignUp(this.pController, {Key? key}) : super(key: key);

  @override
  State<TabSignUp> createState() => _TabSignUpState();
}

class _TabSignUpState extends State<TabSignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final singnUpkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: singnUpkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getCustomFont("Name", 16.sp, Colors.black, 1,
              fontWeight: FontWeight.w600, txtHeight: 1.5),
          getVerSpace(6.h),
          defaultTextField(context, nameController, "Enter Your Name",
              validator: (name) {
            if (name == null || name.isEmpty) {
              return 'Please enter name';
            }
            return null;
          }),
          getVerSpace(20.h),
          getCustomFont("Email Address", 16.sp, Colors.black, 1,
              fontWeight: FontWeight.w600, txtHeight: 1.5),
          getVerSpace(6.h),
          defaultTextField(context, emailController, "Email Address",
              validator: (email) {
            if (email == null || email.isEmpty) {
              return 'Please enter email address';
            } else {
              if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                  .hasMatch(email)) {
                return 'Please enter valid email address';
              }
            }
            return null;
          }),
          getVerSpace(20.h),
          getCustomFont("Phone Number", 16.sp, Colors.black, 1,
              fontWeight: FontWeight.w600, txtHeight: 1.5),
          getVerSpace(6.h),
          // getCountryTextField(
          //     context, phoneController, "Enter Your Phone Number",
          //     validator: (phoneNumber) {
          //   if (phoneNumber == null ||
          //       phoneNumber.isEmpty ||
          //       phoneNumber.length < 10) {
          //     return 'Please enter Valid phone number';
          //   }
          //   return null;
          // },
          //     prefix: true,
          //     keyboardType: TextInputType.number,
          //     inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
          // getVerSpace(20.h),
          // getVerSpace(6.h),
          // defaultTextField(context, passwordController, "Your Password",
          //     validator: (password) {
          //   if (password == null || password.isEmpty) {
          //     return 'Please enter password';
          //   }
          //   return null;
          // }, suffix: true, suffixImage: "eye.svg"),
          getVerSpace(50.h),
          getButton(context, pacificBlue, "Sign Up", Colors.white, () {
            if (singnUpkey.currentState!.validate()) {
              Constant.sendToNext(context, Routes.verificationRoute);
            }
          }, 18.sp,
              weight: FontWeight.w700,
              buttonHeight: 60.h,
              borderRadius: BorderRadius.circular(16.h))
        ],
      ).marginSymmetric(horizontal: 20.h),
    );
  }
}
