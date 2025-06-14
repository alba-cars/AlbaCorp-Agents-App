import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/model/lead_expiration_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/cubit/expired_hot_lead_explorer_cubit.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/widgets/expired_hot_lead_card.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/widgets/filter_lead_source.dart';

class ExpiredHotLeadExplorer extends StatelessWidget {
  static const routeName = '/ExpiredHotLeadExplorer';
  const ExpiredHotLeadExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExpiredHotLeadExplorerCubit>(),
      child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hot Lead Explorer"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<ExpiredHotLeadExplorerCubit,
            ExpiredHotLeadExplorerState>(
          builder: (context, state) {
            return Column(
              children: [
                LeadSourceFilter(state: state),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await context
                          .read<ExpiredHotLeadExplorerCubit>()
                          .getExpiredHotLeads(refresh: true);
                    },
                    child: Builder(
                      builder: (context) {
                        // Full-screen loader
                        if (state.getExpiredHotLeadStatus ==
                                AppStatus.loading &&
                            state.expiredHotLeads.isEmpty) {
                          return Center(child: CircularProgressIndicator());
                        }

                        // Empty list message (optional, can be added if needed)
                        // if (state.expiredHotLeads.isEmpty && state.getExpiredHotLeadStatus != AppStatus.loading) {
                        //   return Center(child: Text("No expired hot leads found."));
                        // }

                        return NotificationListener<ScrollNotification>(
                          onNotification: (notification) {
                            if (notification.metrics.pixels >=
                                    notification.metrics.maxScrollExtent *
                                        0.8 &&
                                state.getExpiredHotLeadStatus !=
                                    AppStatus.loading &&
                                state.expiredHotLeadsPaginator != null &&
                                (state.expiredHotLeadsPaginator!.currentPage <
                                    (state.expiredHotLeadsPaginator!.itemCount /
                                            state.expiredHotLeadsPaginator!
                                                .perPage)
                                        .ceil())) {
                              context
                                  .read<ExpiredHotLeadExplorerCubit>()
                                  .getExpiredHotLeads();
                            }
                            return true;
                          },
                          child: ListView.separated(
                            itemCount: state.expiredHotLeads.length +
                                (state.getExpiredHotLeadStatus ==
                                            AppStatus.loading &&
                                        state.expiredHotLeads.isNotEmpty
                                    ? 1
                                    : 0),
                            itemBuilder: (context, index) {
                              // Pagination loader
                              if (index == state.expiredHotLeads.length &&
                                  state.getExpiredHotLeadStatus ==
                                      AppStatus.loading &&
                                  state.expiredHotLeads.isNotEmpty) {
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              }

                              final LeadExpirationModel card =
                                  state.expiredHotLeads[index];
                              final bool isAssigningThisLead =
                                  state.assignLeadStatus == AppStatus.loading &&
                                      state.assigningLeadId ==
                                          card.lastExpirationRecord.lead.id;

                              return ExpiredHotLeadCard(
                                lastExpiredAt: DateFormat.yMEd().format(
                                    card.lastExpirationRecord.createdAt),
                                leadSource: card
                                    .lastExpirationRecord.lead.leadSource.name,
                                agentName: card.lastExpirationRecord.agent.name,
                                agentPhone:
                                    card.lastExpirationRecord.agent.phone,
                                name: card.lastExpirationRecord.lead.name,
                                agentInitials:
                                    card.lastExpirationRecord.agent.photo ?? '',
                                expirationCount: card.numberOfExpirations,
                                isLoading: isAssigningThisLead,
                                onAssign: () async {
                                  if (!isAssigningThisLead) {
                                    // Prevent multiple clicks while assigning
                                    await context
                                        .read<ExpiredHotLeadExplorerCubit>()
                                        .checkOutLead(
                                            context: context, card: card);
                                  }
                                },
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 8),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
