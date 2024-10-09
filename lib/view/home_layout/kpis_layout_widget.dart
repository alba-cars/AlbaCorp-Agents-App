import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/home_layout/kpi_item_widget.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../home_screen/cubit/home_cubit.dart';

class KpisLayoutWidget extends StatelessWidget {
  const KpisLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingText(
            text: "Your KPIs",
            color: Colors.white,
          ),
          VerticalSmallGap(),
          BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: BlocSelector<HomeCubit, HomeState, int>(
                      selector: (state) {
                        return state.pendingTasksCount;
                      },
                      builder: (context, state) {
                        return KpiItemWidget(
                          title: 'Actions Pending \nToday',
                          value: '${state}',
                        );
                      },
                    )),
                Expanded(
                    flex: 1,
                    child: BlocSelector<HomeCubit, HomeState, int>(
                      selector: (state) {
                        return state.completedTasksCount;
                      },
                      builder: (context, state) {
                        return KpiItemWidget(
                          title: 'Actions done \nToday',
                          value: '$state',
                        );
                      },
                    )),
                Expanded(
                    flex: 1,
                    child: BlocSelector<HomeCubit, HomeState, int>(
                      selector: (state) {
                        return state.viewingTasksCount;
                      },
                      builder: (context, state) {
                        return KpiItemWidget(
                          title: 'Viewings \nToday',
                          value: '$state',
                        );
                      },
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
