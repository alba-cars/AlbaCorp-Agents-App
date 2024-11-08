import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:real_estate_app/core/helpers/currency_formatter.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/earnings/cubit/earnings_cubit.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../util/status.dart';
import '../../../widgets/space.dart';

class EarningsWidget extends StatefulWidget {
  final isExpectedEarnings;
  const EarningsWidget({super.key, this.isExpectedEarnings = false});

  @override
  State<EarningsWidget> createState() => _EarningsWidgetState();
}

class _EarningsWidgetState extends State<EarningsWidget> {
  @override
  void didUpdateWidget(covariant EarningsWidget oldWidget) {
    context
        .read<EarningsCubit>()
        .getAgentEarnings(isExpected: widget.isExpectedEarnings);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color(0xFFaed6f1).withOpacity(.2),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleText(
                  text: widget.isExpectedEarnings
                      ? "Your Expected Commission"
                      : "Your Commission Earnings",
                  color: Colors.indigoAccent,
                ),
                VerticalSmallGap(),
                BlocBuilder<EarningsCubit, EarningsState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: widget.isExpectedEarnings
                              ? getExpectedEarningsWidget(context, state)
                              : getWidget(context, state),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xFF85c1e9).withOpacity(.5),
                  borderRadius: BorderRadius.circular(60)),
              child: Lottie.asset("assets/lottie/wallet-lottie.json",
                  height: 20, width: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget getWidget(BuildContext context, EarningsState state) {
    switch (state.fetchStatus) {
      case AppStatus.success:
        return Row(
          children: [
            Card(
              color: Theme.of(context).colorScheme.tertiary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              elevation: 1,
              margin: EdgeInsets.only(right: 12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(
                      text: "Total",
                      color: Colors.white,
                    ),
                    HeadingText(
                      text: NumberFormat.compactCurrency(symbol: "AED ")
                          .format(state.earnings.totalEarnings),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 80,
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 1,
              color: Color(0xFF698bff),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              margin: EdgeInsets.all(4),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(
                      text: "This month",
                      color: Colors.white,
                    ),
                    HeadingText(
                      text: NumberFormat.compactCurrency(symbol: "AED ")
                          .format(state.earnings.thisMonthEarning),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 80,
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      case AppStatus.failure:
        return Row(
          children: [
            Icon(Icons.error),
            HorizontalSmallGap(),
            Text("Error loading data"),
          ],
        );
      case AppStatus.loading:
        return SizedBox(
          height: 25,
          width: 25,
          child: LinearProgressIndicator(
            color: Colors.white,
          ),
        );
      default:
        return SizedBox();
    }
  }

  getExpectedEarningsWidget(BuildContext context, EarningsState state) {
    switch (state.fetchStatus) {
      case AppStatus.success:
        return Row(
          children: [
            Card(
              color: Theme.of(context).colorScheme.tertiary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              elevation: 1,
              margin: EdgeInsets.only(right: 12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(
                      text: "Total",
                      color: Colors.white,
                    ),
                    HeadingText(
                      text: CurrencyFormatterHelper.formatCurrency(
                          state.earnings.totalEarnings),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 80,
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      case AppStatus.failure:
        return Row(
          children: [
            Icon(Icons.error),
            HorizontalSmallGap(),
            Text("Error loading data"),
          ],
        );
      case AppStatus.loading:
        return SizedBox(
          height: 25,
          width: 25,
          child: LinearProgressIndicator(
            color: Colors.white,
          ),
        );
      default:
        return SizedBox();
    }
  }
}
