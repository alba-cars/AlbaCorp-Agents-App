import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/deal_details_screen/cubit/deal_details_cubit.dart';
import 'package:real_estate_app/view/deal_details_screen/widgets/documents_tabview.dart';
import 'package:real_estate_app/view/deal_details_screen/widgets/info_tabview.dart';
import 'package:real_estate_app/view/deal_details_screen/widgets/transactions_tabview.dart';

import 'widgets/activities_tabview.dart';
import 'widgets/deal_tab_bar.dart';

class DealDetailsScreen extends StatelessWidget {
  static const routeName = '/dealDetailsScreen';
  const DealDetailsScreen({super.key, required this.dealId});

  final String dealId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DealDetailsCubit>(param1: dealId),
      child: _DealDetailsScreenLayout(),
    );
  }
}

class _DealDetailsScreenLayout extends StatefulWidget {
  const _DealDetailsScreenLayout({super.key});

  @override
  State<_DealDetailsScreenLayout> createState() =>
      _DealDetailsScreenLayoutState();
}

class _DealDetailsScreenLayoutState extends State<_DealDetailsScreenLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);

  @override
  void initState() {
    context.read<DealDetailsCubit>().getDeal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        context.pop<Deal>(context.read<DealDetailsCubit>().state.deal);
      },
      child: SafeArea(
        child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    title: Text('Deal Details'),
                    centerTitle: true,
                    backgroundColor: Colors.white,
                    foregroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  SliverPersistentHeader(
                      delegate: DealDetailScreenTabHeader(
                          tabController: _tabController)),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  InfoTabView(),
                  TransactionsTabView(),
                  DocumentsTabView(),
                  ActivitiesTabView()
                ],
              )),
        ),
      ),
    );
  }
}
