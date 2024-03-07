import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TicketsScreen extends StatelessWidget {
  static const routeName = '/ticketsScreen';
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _TicketsScreenLayout();
  }
}

class _TicketsScreenLayout extends StatelessWidget {
  const _TicketsScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tickets'),
        centerTitle: true,
      ),
      body: NotificationListener(
          child: RefreshIndicator.adaptive(
        onRefresh: () async {},
        child: ListView.separated(
            itemBuilder: (context, index) {
              return SizedBox();
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 8,
                ),
            itemCount: 8),
      )),
    );
  }
}
