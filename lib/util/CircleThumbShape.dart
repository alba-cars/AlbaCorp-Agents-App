import 'package:flutter/material.dart';

import 'color_category.dart';

class CircleThumbShape extends SliderComponentShape {

  final double thumbRadius;

  const CircleThumbShape({
    this.thumbRadius = 6.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }


@override
  void paint(PaintingContext context, Offset center, {required Animation<double> activationAnimation, required Animation<double> enableAnimation, required bool isDiscrete, required TextPainter labelPainter, required RenderBox parentBox, required SliderThemeData sliderTheme, required TextDirection textDirection, required double value, required double textScaleFactor, required Size sizeWithOverflow}) {
    // TODO: implement paint
  final Canvas canvas = context.canvas;

  final fillPaint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.fill;

  final borderPaint = Paint()
    ..color = pacificBlue
    ..strokeWidth = 5
    ..style = PaintingStyle.stroke;

  canvas.drawCircle(center, thumbRadius, fillPaint);
  canvas.drawCircle(center, thumbRadius, borderPaint);

  }
}