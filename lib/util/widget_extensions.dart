import 'package:flutter/widgets.dart';

extension PaddingExtension on Widget {
  /// Adds padding around a widget.
  Widget withPadding(EdgeInsets padding) => Padding(
        padding: padding,
        child: this,
      );

  /// Adds symmetric padding around a widget.
  Widget paddingSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  /// Adds all-side padding around a widget.
  Widget paddingAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Widget paddingOnly(
          {double left = 0.0,
          double top = 0.0,
          double right = 0.0,
          double bottom = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}

extension MarginExtension on Widget {
  /// Wraps a widget with a Container to apply margin.
  Widget withMargin(EdgeInsets margin) => Container(
        margin: margin,
        child: this,
      );

  /// Adds symmetric margin around a widget.
  Widget marginSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      Container(
        margin:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  /// Adds all-side margin around a widget.
  Widget marginAll(double value) => Container(
        margin: EdgeInsets.all(value),
        child: this,
      );
  Widget marginOnly(
          {double left = 0.0,
          double top = 0.0,
          double right = 0.0,
          double bottom = 0.0}) =>
      Container(
        margin:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}
