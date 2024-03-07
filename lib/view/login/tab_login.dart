import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:real_estate_app/routes/app_routes.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/pref_data.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/home_layout/home_layout.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart';
import 'package:real_estate_app/view/login/cubit/login_cubit.dart';

import '../../util/constant_widget.dart';

// ignore: must_be_immutable
class TabLogin extends StatefulWidget {
  var pController;

  TabLogin(this.pController, {Key? key}) : super(key: key);

  @override
  State<TabLogin> createState() => _TabLoginState();
}

class _TabLoginState extends State<TabLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final loginForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: loginForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextFieldWidget(context),
              getVerSpace(20.h),
              buildForgotButton(),
              getVerSpace(50.h),
              buildLoginButton(context),
              getVerSpace(30.h),
              buildOtherSignIn(context),
            ],
          ).marginSymmetric(horizontal: 20.h),
        ),
      ),
    );
  }

  Column buildOtherSignIn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Align(
        //   alignment: Alignment.topCenter,
        //   child: getCustomFont("Or Continue With", 14.sp, Colors.black, 1,
        //       fontWeight: FontWeight.w400, txtHeight: 1.5),
        // ),
        getVerSpace(30.h),
        // getButton(
        //     context, Colors.transparent, "Google", Colors.black, () {}, 16.sp,
        //     weight: FontWeight.w400,
        //     borderRadius: BorderRadius.circular(16.h),
        //     buttonHeight: 60.h,
        //     isBorder: true,
        //     borderColor: borderColor,
        //     borderWidth: 1.h,
        //     isIcon: true,
        //     image: "google.svg"),
        // getVerSpace(20.h),
        // getButton(
        //     context, Colors.transparent, "Facebook", Colors.black, () {}, 16.sp,
        //     weight: FontWeight.w400,
        //     borderRadius: BorderRadius.circular(16.h),
        //     buttonHeight: 60.h,
        //     isBorder: true,
        //     borderColor: borderColor,
        //     borderWidth: 1.h,
        //     isIcon: true,
        //     image: "facebook.svg")
      ],
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return getButton(context, pacificBlue, "Login", Colors.white, () {
      if (loginForm.currentState!.validate()) {
        final email = emailController.text;
        final password = passwordController.text;
        context.read<LoginCubit>().login(email: email, password: password);
      }
    }, 18.sp,
        weight: FontWeight.w700,
        buttonHeight: 60.h,
        borderRadius: BorderRadius.circular(16.h));
  }

  Align buildForgotButton() {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          Constant.sendToNext(context, Routes.forgotRoute);
        },
        child: getCustomFont("Forgot Password?", 16.sp, Colors.black, 1,
            fontWeight: FontWeight.w400, txtHeight: 1.5),
      ),
    );
  }

  Column buildTextFieldWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        getCustomFont("Password", 16.sp, Colors.black, 1,
            fontWeight: FontWeight.w600, txtHeight: 1.5),
        getVerSpace(6.h),
        defaultTextField(context, passwordController, "Your Password",
            validator: (password) {
          if (password == null || password.isEmpty) {
            return 'Please enter valid password';
          }
          return null;
        }, suffix: true, suffixImage: "eye.svg"),
      ],
    );
  }
}
