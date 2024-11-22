
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toastification/toastification.dart';

void showSnackbar(BuildContext context, String message, SnackBarType type,
    {double? bottomSpace}) {

      final ttype = switch (type) {
        SnackBarType.success =>  ToastificationType.success,
        SnackBarType.failure => ToastificationType.error,
        SnackBarType.info => ToastificationType.info,
      };
      final title = switch (type) {
        SnackBarType.success =>  "Success",
        SnackBarType.failure => "Error",
        SnackBarType.info => "Info",
      };
       final icon = switch (type) {
        SnackBarType.success =>  Icons.check,
        SnackBarType.failure => Icons.error,
        SnackBarType.info => Icons.info,
      };
      final color = switch (type) {
        SnackBarType.success =>  Colors.green,
        SnackBarType.failure => Colors.red,
        SnackBarType.info => Colors.blue,
      };
toastification.show(
  context: context, // optional if you use ToastificationWrapper
  type: ttype,
  style: ToastificationStyle.flatColored,
  autoCloseDuration: const Duration(seconds: 5),
  title: Text(title),
  description: Text(  message),
  alignment: Alignment.topRight,
  direction: TextDirection.ltr,
  animationDuration: const Duration(milliseconds: 300),
  icon: Icon(icon),
  showIcon: true, // show or hide the icon
  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  borderRadius: BorderRadius.circular(12),
  primaryColor: color,
  boxShadow: const [
    BoxShadow(
      color: Color(0x07000000),
      blurRadius: 16,
      offset: Offset(0, 16),
      spreadRadius: 0,
    )
  ],
  showProgressBar: true,
  closeButtonShowType: CloseButtonShowType.onHover,
  closeOnClick: false,
  pauseOnHover: true,
  dragToClose: true,
  applyBlurEffect: true,
  callbacks: ToastificationCallbacks(
    onTap: (toastItem) => print('Toast ${toastItem.id} tapped'),
    onCloseButtonTap: (toastItem) => print('Toast ${toastItem.id} close button tapped'),
    onAutoCompleteCompleted: (toastItem) => print('Toast ${toastItem.id} auto complete completed'),
    onDismissed: (toastItem) => print('Toast ${toastItem.id} dismissed'),
  ),
);

  // ScaffoldMessenger.maybeOf(context)
  //   ?..removeCurrentSnackBar()
  //   ..showSnackBar(SnackBar(
  //     dismissDirection: DismissDirection.horizontal,
  //     behavior: SnackBarBehavior.floating,
  //     margin: EdgeInsets.only(bottom: bottomSpace ?? 15, left: 15, right: 15),
  //     shape: RoundedRectangleBorder(
  //         side: BorderSide(
  //             color: switch (type) {
  //               SnackBarType.success => Colors.green[700]!.withOpacity(0.5),
  //               SnackBarType.failure => Colors.red[700]!.withOpacity(0.5),
  //               SnackBarType.info => Colors.grey
  //             },
  //             width: 4),
  //         borderRadius: BorderRadius.circular(6)),
  //     content: Text(
  //       message,
  //       style: TextStyle(
  //         fontSize: 12.0,
  //       ),
  //       softWrap: true,
  //       overflow: TextOverflow.ellipsis,
  //       maxLines: 10,
  //     ),
  //     duration: const Duration(seconds: 3),
  //   ));
}

enum SnackBarType { success, failure, info }
