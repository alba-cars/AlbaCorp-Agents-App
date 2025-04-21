import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/view/listings_screen/cubit/listings_cubit.dart';

/// Header component displaying the title and count of pocket listings
class ListingHeader extends StatelessWidget {
  const ListingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Pocket Listings',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        _buildCountBadge(context),
      ],
    );
  }

  Widget _buildCountBadge(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: BlocSelector<ListingsCubit, ListingsState, int>(
        selector: (state) => state.pocketListingsPaginator?.itemCount ?? 0,
        builder: (context, count) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
