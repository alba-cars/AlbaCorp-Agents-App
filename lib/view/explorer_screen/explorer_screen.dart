import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExplorerScreen extends StatelessWidget {
  static const routeName = '/explorerScreen';
  const ExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _ExplorerScreen();
  }
}

class _ExplorerScreen extends StatelessWidget {
  const _ExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explorer'),
        centerTitle: true,
      ),
    );
  }
}
