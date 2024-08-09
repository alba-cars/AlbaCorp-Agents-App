import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/deal_details_screen/cubit/deal_details_cubit.dart';

import '../../../widgets/text.dart';
import '../../deals_screen/deals_screen.dart';

class TransactionsTabView extends StatefulWidget {
  const TransactionsTabView({super.key});

  @override
  State<TransactionsTabView> createState() => _TransactionsTabViewState();
}

class _TransactionsTabViewState extends State<TransactionsTabView> {
  @override
  void initState() {
    Future.wait([
      context.read<DealDetailsCubit>().getBuyerDeals(),
      context.read<DealDetailsCubit>().getSellerDeals(),
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
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Buyer Deals',
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ],
            ),
          ),
          BlocBuilder<DealDetailsCubit, DealDetailsState>(
            builder: (context, state) {
              if (state.buyerDealsStatus == AppStatus.loading) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state.buyerDealsStatus == AppStatus.success &&
                  state.buyerDeals.isEmpty) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text('No other deals for this client'),
                );
              }
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  itemBuilder: (context, index) {
                    final deal = state.buyerDeals[index];
                    return DealItem(
                      deal: deal,
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                  itemCount: state.buyerDeals.length);
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Seller Deals',
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ],
            ),
          ),
          BlocBuilder<DealDetailsCubit, DealDetailsState>(
            builder: (context, state) {
              if (state.sellerDealsStatus == AppStatus.loading) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state.sellerDealsStatus == AppStatus.success &&
                  state.sellerDeals.isEmpty) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text('No other deals for this client'),
                );
              }
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  itemBuilder: (context, index) {
                    final deal = state.sellerDeals[index];
                    return DealItem(
                      deal: deal,
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                  itemCount: state.sellerDeals.length);
            },
          ),
        ],
      ),
    );
  }
}
