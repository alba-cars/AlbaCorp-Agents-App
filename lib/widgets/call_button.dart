import 'package:flutter/material.dart';

class CallButton extends StatelessWidget {
  const CallButton({super.key, required this.onTap, required this.isDnd});
  final VoidCallback onTap;
  final bool isDnd;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return IconButton.filledTonal(
        style: IconButton.styleFrom(
            backgroundColor: isDnd
                ? colorScheme.errorContainer
                : colorScheme.primaryContainer),
        onPressed: () async {
          if (isDnd) {
            return;
          } else {
            onTap();
          }
        },
        icon: isDnd
            ? Icon(
                Icons.block,
                color: Colors.red,
              )
            : Icon(
                Icons.call,
              ));
  }
}

class WhatsAppButton extends StatelessWidget {
  const WhatsAppButton({super.key, required this.onTap, required this.isDnd});
  final VoidCallback onTap;
  final bool isDnd;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return IconButton.filledTonal(
        style: IconButton.styleFrom(
            backgroundColor: isDnd
                ? colorScheme.errorContainer
                : colorScheme.primaryContainer),
        onPressed: () async {
          if (isDnd) {
            return;
          } else {
            onTap();
          }
        },
        icon: isDnd
            ? Icon(
                Icons.block,
                color: Colors.red,
              )
            : ImageIcon(AssetImage('assets/images/whatsapp.png')));
  }
}
