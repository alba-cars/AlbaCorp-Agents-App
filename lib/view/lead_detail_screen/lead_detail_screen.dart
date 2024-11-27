import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_task_screen/add_task_screen.dart';
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/view/lead_detail_screen/widgets/deals_tab_view.dart';
import 'package:real_estate_app/view/lead_detail_screen/widgets/property_cards_tab_view.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../model/lead_model.dart';
import 'widgets/about_tab_view.dart';
import 'widgets/activities_tab_view.dart';

class LeadDetailScreen extends StatelessWidget {
  static const routeName = '/lead-details';
  const LeadDetailScreen(
      {super.key, required this.leadId, this.activeTabIndex});

  final String leadId;
  final int? activeTabIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LeadDetailCubit>(param1: leadId),
      child: LeadDetailScreenLayout(
        activeTabIndex: activeTabIndex,
        leadId: leadId,
      ),
    );
  }
}

class LeadDetailScreenLayout extends StatefulWidget {
  const LeadDetailScreenLayout(
      {super.key, this.activeTabIndex, required this.leadId});
  final int? activeTabIndex;
  final String leadId;
  @override
  State<LeadDetailScreenLayout> createState() => _LeadDetailScreenLayoutState();
}

class _LeadDetailScreenLayoutState extends State<LeadDetailScreenLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);

  @override
  void initState() {
    context.read<LeadDetailCubit>().getLeadDetails();
    if (widget.activeTabIndex != null) {
      _tabController.animateTo(widget.activeTabIndex!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LeadDetailCubit, LeadDetailState, Lead?>(
        selector: (state) {
      return state.lead;
    }, builder: (context, lead) {
      return Scaffold(
        floatingActionButton: lead != null
            ? FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  context.pushNamed(AddTaskScreen.routeName, pathParameters: {
                    "lead_id": widget.leadId,
                    "lead_status": lead.leadStatus.toString()
                  });
                })
            : null,
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: BlockTitleText(
                text: 'Lead Details',
                color: Theme.of(context).colorScheme.primary,
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
            SliverPersistentHeader(
                delegate:
                    LeadDetailScreenTabHeader(tabController: _tabController)),
          ];
        }, body: Builder(builder: (context) {
          if (lead == null) {
            return SizedBox();
          }
          return TabBarView(
            controller: _tabController,
            children: [
              AboutTabView(
                lead: lead,
              ),
              BlocSelector<LeadDetailCubit, LeadDetailState, List<Activity>>(
                selector: (state) {
                  return state.activities;
                },
                builder: (context, activities) {
                  return ActivitiesTabView(
                    activities: activities,
                  );
                },
              ),
              BlocSelector<LeadDetailCubit, LeadDetailState, List<Deal>>(
                selector: (state) {
                  return state.deals;
                },
                builder: (context, deals) {
                  return DealsTabView(deals: deals);
                },
              ),
              PropertyCardsTabView()
            ],
          );
        })),
      );
    });
  }
}

class LeadDetailScreenTabHeader extends SliverPersistentHeaderDelegate {
  final TabController tabController;

  LeadDetailScreenTabHeader({required this.tabController});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      color: Colors.white,
      child: TabBar(padding: EdgeInsets.zero, controller: tabController, tabs: [
        Tab(
          text: 'About',
        ),
        Tab(
          text: 'Activities',
        ),
        Tab(
          text: 'Deals',
        ),
        Tab(
          text: 'Property Cards',
        ),
      ]),
    );
  }

  @override
  double get maxExtent => 65;

  @override
  double get minExtent => 65;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
