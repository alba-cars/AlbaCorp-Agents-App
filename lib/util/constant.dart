import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui' as ui;

import 'package:go_router/go_router.dart';

class Constant {

  static String assetImagePath = "assets/images/";
  static const String fontsFamily = "SF UI Text";
  static const double defScreenWidth = 414;
  static const double defScreenHeight = 896;

  static void setupSize(BuildContext context,
      {double width = defScreenWidth, double height = defScreenHeight}) {
    ScreenUtil.init(context,
        designSize: Size(width, height), minTextAdapt: true);
  }

  static backToPrev(BuildContext context) {
    context.pop();
  }

  static Future<ui.Image> getImage(String name) {
    final Image image =
        Image(image: AssetImage(Constant.assetImagePath + name));

    Completer<ui.Image> completer = Completer<ui.Image>();
    image.image
        .resolve(const ImageConfiguration())
        .addListener(ImageStreamListener((ImageInfo image, bool _) {
      completer.complete(image.image);
    }));
    return completer.future;
  }

  static getCurrency(BuildContext context) {
    return "ETH";
  }

  static sendToNext(BuildContext context, String route, {Object? arguments}) {
    if (arguments != null) {
      context.pushNamed(route, queryParameters: {});
    } else {
      context.pushNamed(route);
    }
  }

  static sendToNextWithBackResult(
      BuildContext context, String route, ValueChanged<dynamic> fun,
      {Object? arguments}) {
    if (arguments != null) {
      context.pushNamed(route, queryParameters: {}).then((value) {
        fun(value);
      });
    } else {
      context.pushNamed(route).then((value) {
        fun(value);
      });
    }
  }

  static double getToolbarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top + kToolbarHeight;
  }

  static double getToolbarTopHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static sendToScreen(
      Widget widget, BuildContext context, ValueChanged<dynamic> setChange) {
    // c.to(() => widget)!.then(setChange);
  }

  static backToFinish() {
    // back
  }

  static formatTime(Duration d) =>
      d.toString().split('.').first.padLeft(8, "0");

  static closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
}
