import 'package:flutter/services.dart';

Color bgColor = "#FEFEFE".toColor();
Color pacificBlue = "#374eab".toColor();
Color hintColor = "#565858".toColor();
Color borderColor = "#DFDFDF".toColor();
Color errorColor = "#FF6565".toColor();
Color shadowColor = "#24819498".toColor();
Color lightPacific = "#D8F0F4".toColor();
Color regularBlack = "#000000".toColor();
Color regularWhite = "#FFFFFF".toColor();
Color tabbarBackground = "#F6F6F6".toColor();
Color selectTabColor = "#819498".toColor();
Color dividerColor = "#F1F1F1".toColor();

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

setStatusBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: color,
  ));
}
