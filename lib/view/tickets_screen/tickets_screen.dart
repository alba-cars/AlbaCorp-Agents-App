import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/ticket_model.dart';
import 'package:real_estate_app/view/add_ticket_screen/add_ticket_screen.dart';
import 'package:real_estate_app/view/deal_details_screen/widgets/info_label_value.dart';
import 'package:real_estate_app/view/ticket_detail_screen/ticket_details_screen.dart';
import 'package:real_estate_app/view/tickets_screen/cubit/tickets_screen_cubit.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:recase/recase.dart';

import '../../service_locator/injectable.dart';
import '../../util/color_category.dart';
import '../../util/status.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/space.dart';
import '../../widgets/tab_bar.dart';
import '../../widgets/text.dart';

class TicketsScreen extends StatelessWidget {
  static const routeName = '/ticketsScreen';
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TicketsScreenCubit>(),
      child: _TicketsScreenLayout(),
    );
  }
}

class _TicketsScreenLayout extends StatefulWidget {
  const _TicketsScreenLayout();

  @override
  State<_TicketsScreenLayout> createState() => _TicketsScreenLayoutState();
}

class _TicketsScreenLayoutState extends State<_TicketsScreenLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);
  @override
  void initState() {
    context.read<TicketsScreenCubit>().getTickets();
    super.initState();
  }

  List<Widget> filterFields(
      BuildContext context, Map<String, dynamic>? valuesues) {
    return [
      DropDownfield(
        label: 'Request Type',
        items: RequestType.values.map((e) => e.value).toList(),
        name: "requestType",
        displayOption: (option) => option,
      ),
      DropDownfield(
        label: 'Department',
        items: context.select((TicketsScreenCubit value) => value
            .state.departments
            .map((e) => {'label': e.departmentName, 'value': e.id})
            .toList()),
        name: "department",
        displayOption: (option) => option['label']?.toString() ?? '',
      ),
      WrapSelectField(
        name: 'status',
        values: TicketStatus.values.map((e) => e.name.titleCase).toList(),
        label: "Ticket Status",
      ),
      WrapSelectField(
        name: 'type',
        values: TicketType.values
            .map((e) => {'label': e.name.titleCase, "value": e.name})
            .toList(),
        displayOption: (option) => option['label']?.toString() ?? '',
        label: "Ticket Type",
      ),
      WrapSelectField(
        name: 'priority',
        values: TicketPriority.values.map((e) => e.name.titleCase).toList(),
        label: "Priority",
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.pushNamed(AddTicketScreen.routeName);
          if (mounted) {
            context.read<TicketsScreenCubit>().getTickets();
          }
        },
        child: Icon(Icons.add),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text('Tickets'),
              centerTitle: true,
            ),
            SliverVerticalSmallGap(),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TitleText(
                  text: 'Tickets List',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabs: ['Created By Me', 'Assigned To Me'],
                onTap: (index) {
                  context.read<TicketsScreenCubit>().setSelectedTab(index);
                },
              ),
            )),
            SliverToBoxAdapter(),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppSearchBar(
                onChanged: context.read<TicketsScreenCubit>().searchTickets,
                filterFields: filterFields,
                filter: context.select(
                    (TicketsScreenCubit value) => value.state.ticketsFilter),
                onFilterApplied:
                    context.read<TicketsScreenCubit>().setTicketsFilters,
              ),
            ))
          ];
        },
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<TicketsScreenCubit, TicketsScreenState>(
                buildWhen: (previous, current) =>
                    previous.getTicketsListStatus !=
                    current.getTicketsListStatus,
                builder: (context, state) {
                  if (state.getTicketsListStatus == AppStatus.loading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.getTicketsListStatus == AppStatus.success &&
                      state.ticketsList.length == 0) {
                    return Center(
                      child: Text('No Tickets Found'),
                    );
                  }
                  return NotificationListener<ScrollNotification>(
                      onNotification: (scrollInfo) {
                        if (state.getTicketsListStatus !=
                                AppStatus.loadingMore &&
                            scrollInfo.metrics.pixels >=
                                0.9 * scrollInfo.metrics.maxScrollExtent) {
                          context.read<TicketsScreenCubit>().getTickets();
                        }
                        return true;
                      },
                      child: RefreshIndicator.adaptive(
                        onRefresh: () async {
                          await context
                              .read<TicketsScreenCubit>()
                              .getTickets(refresh: true);
                        },
                        child: ListView.separated(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            itemBuilder: (context, index) {
                              if (index == state.ticketsList.length) {
                                return SizedBox(
                                  height: 50,
                                  child: Center(
                                      child: CircularProgressIndicator()),
                                );
                              }
                              final ticket = state.ticketsList[index];
                              return TicketListItem(ticket: ticket);
                            },
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 8,
                                ),
                            itemCount: state.getTicketsListStatus ==
                                    AppStatus.loadingMore
                                ? state.ticketsList.length + 1
                                : state.ticketsList.length),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketListItem extends StatelessWidget {
  const TicketListItem({
    super.key,
    required this.ticket,
  });

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(TicketDetailScreen.routeName,
            pathParameters: {'id': ticket.id.toString()});
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelText(
                  text: ticket.serialNumber,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.h),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blueGrey[100]),
                  child: SmallText(text: ticket.status.name.titleCase),
                ),
              ],
            ),
            InfoLabelValue(
              labelOne: 'Department',
              valueOne: ticket.department?.departmentName,
              labelTwo: 'Request Type',
              valueTwo: ticket.requestType.name.titleCase,
            ),
            InfoLabelValue(
              labelOne: 'Priority',
              valueOne: ticket.priority.name.titleCase,
              labelTwo: 'Admin Assigned',
              valueTwo: ticket.admin?.firstName.titleCase ?? 'NOT ASSIGNED',
            )
          ],
        ),
      ),
    );
  }
}
