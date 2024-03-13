import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/space.dart';

class TitleText extends StatelessWidget {
  const TitleText(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.textAlign});
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: fontWeight ?? FontWeight.w500, color: color),
    );
  }
}

class LabelText extends StatelessWidget {
  const LabelText(
      {super.key,
      required this.text,
      this.underline = false,
      this.color,
      this.textAlign,
      this.maxLines});
  final String text;
  final bool underline;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;

  Widget textWidget(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: (maxLines != null) ? TextOverflow.ellipsis : null,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: color,
            ),
      );

  @override
  Widget build(BuildContext context) {
    return underline
        ? Container(
            padding: EdgeInsets.only(
              bottom: 2, // Space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: color ?? Colors.black,
              width: 2.0, // Underline thickness
            ))),
            child: textWidget(context))
        : textWidget(context);
  }
}

class BlockTitleText extends StatelessWidget {
  const BlockTitleText(
      {super.key,
      required this.text,
      this.underline = false,
      this.color,
      this.textAlign});
  final String text;
  final bool underline;
  final Color? color;
  final TextAlign? textAlign;

  Widget textWidget(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: color,
            ),
      );

  @override
  Widget build(BuildContext context) {
    return underline
        ? Container(
            padding: EdgeInsets.only(
              bottom: 2, // Space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: color ?? Colors.black,
              width: 2.0, // Underline thickness
            ))),
            child: textWidget(context))
        : textWidget(context);
  }
}

class SmallText extends StatelessWidget {
  const SmallText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.textAlign});
  final String text;
  final Color color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 12,
            color: color,
          ),
    );
  }
}

class NormalText extends StatelessWidget {
  const NormalText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.textAlign,
      this.fontWeight,
      this.fontSize});
  final String text;
  final Color color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
          fontSize: fontSize ?? 13, color: color, fontWeight: fontWeight),
    );
  }
}

class TextWithIcon extends StatelessWidget {
  const TextWithIcon(
      {super.key,
      required this.text,
      this.icon,
      this.iconPath,
      this.color = Colors.grey,
      this.iconColor,
      this.iconSize});

  final String text;
  final Color color;
  final Color? iconColor;
  final double? iconSize;

  final IconData? icon;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (icon != null)
              ? Icon(
                  icon,
                  color: iconColor ?? color,
                  size: iconSize ?? 13,
                )
              : (iconPath != null)
                  ? ImageIcon(
                      AssetImage(
                        iconPath!,
                      ),
                      color: iconColor ?? color,
                      size: iconSize ?? 13,
                    )
                  : SizedBox(),
          HorizontalSmallGap(),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 11, color: color),
            ),
          )
        ],
      ),
    );
  }
}

class TitleValueWithDividerAtBottom extends StatelessWidget {
  const TitleValueWithDividerAtBottom(
      {super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: title.toUpperCase(),
          color: Colors.blueGrey,
        ),
        VerticalSmallGap(
          adjustment: 0.2,
        ),
        NormalText(
          text: value,
        ),
        Divider(),
      ],
    );
  }
}

class TitleValue extends StatelessWidget {
  const TitleValue({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: title.toUpperCase(),
          color: Colors.blueGrey,
        ),
        HorizontalSmallGap(),
        NormalText(
          text: value,
        ),
      ],
    );
  }
}
