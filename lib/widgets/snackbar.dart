import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String message, SnackBarType type,
    {double? bottomSpace}) {
  ScaffoldMessenger.maybeOf(context)
    ?..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(
      dismissDirection: DismissDirection.horizontal,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(bottom: bottomSpace ?? 15, left: 15, right: 15),
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: switch (type) {
                SnackBarType.success => Colors.green[700]!.withOpacity(0.5),
                SnackBarType.failure => Colors.red[700]!.withOpacity(0.5),
                SnackBarType.info => Colors.grey
              },
              width: 4),
          borderRadius: BorderRadius.circular(6)),
      content: Text(
        message,
        style: TextStyle(
          fontSize: 12.0,
        ),
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 10,
      ),
      duration: const Duration(seconds: 3),
    ));
}

enum SnackBarType { success, failure, info }
