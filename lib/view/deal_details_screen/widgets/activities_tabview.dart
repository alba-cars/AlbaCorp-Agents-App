import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/deal_details_screen/cubit/deal_details_cubit.dart';
import 'package:real_estate_app/view/listing_detail_screen/widgets/activity_list.dart';

import '../../../widgets/text.dart';

class ActivitiesTabView extends StatefulWidget {
  const ActivitiesTabView({super.key});

  @override
  State<ActivitiesTabView> createState() => _ActivitiesTabViewState();
}

class _ActivitiesTabViewState extends State<ActivitiesTabView> {
  @override
  void initState() {
    Future.wait([
      context.read<DealDetailsCubit>().getBuyerActivities(),
      context.read<DealDetailsCubit>().getSellerActivities(),
      context.read<DealDetailsCubit>().getPropertyActivities(),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Buyer Activities',
                ),
              ],
            ),
          ),
          BlocBuilder<DealDetailsCubit, DealDetailsState>(
            builder: (context, state) {
              if (state.buyerActivitiesStatus == AppStatus.loading) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state.buyerActivitiesStatus == AppStatus.success &&
                  state.buyerActivities.isEmpty) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text('No activities for buyer'),
                );
              }
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: ActivityList(activities: state.buyerActivities),
              );
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Seller Activities',
                ),
              ],
            ),
          ),
          BlocBuilder<DealDetailsCubit, DealDetailsState>(
            builder: (context, state) {
              if (state.sellerActivitiesStatus == AppStatus.loading) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state.sellerActivitiesStatus == AppStatus.success &&
                  state.sellerActivities.isEmpty) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text('No activities for seller'),
                );
              }
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: ActivityList(activities: state.sellerActivities),
              );
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Property Activities',
                ),
              ],
            ),
          ),
          BlocBuilder<DealDetailsCubit, DealDetailsState>(
            builder: (context, state) {
              if (state.propertyActivitiesStatus == AppStatus.loading) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state.propertyActivitiesStatus == AppStatus.success &&
                  state.propertyActivities.isEmpty) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text('No activities for this property'),
                );
              }
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: ActivityList(activities: state.propertyActivities),
              );
            },
          ),
        ],
      ),
    );
  }
}
