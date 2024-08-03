import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/constants/hot_leads.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/leads_screen/cubit/leads_cubit.dart';
import 'package:real_estate_app/widgets/fields/date_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/search_bar.dart';

import '../../app/call_bloc/call_bloc.dart';
import '../../util/color_category.dart';
import '../../util/status.dart';
import '../../widgets/button.dart';
import '../../widgets/call_button.dart';
import '../../widgets/snackbar.dart';
import '../../widgets/space.dart';
import '../../widgets/text.dart';
import '../lead_detail_screen/lead_detail_screen.dart';

class LeadsScreen extends StatelessWidget {
  static const routeName = '/leadsScreen';
  const LeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LeadsCubit>(),
      child: LeadScreenLayout(),
    );
  }
}

class LeadScreenLayout extends StatefulWidget {
  const LeadScreenLayout({super.key});

  @override
  State<LeadScreenLayout> createState() => _LeadScreenLayoutState();
}

class _LeadScreenLayoutState extends State<LeadScreenLayout> {
  @override
  void initState() {
    context.read<LeadsCubit>().getLeads();
    super.initState();
  }

  List<Widget> filterFields() {
    return [
      WrapSelectField(
        name: 'active',
        label: 'Active',
        values: [
          {'value': true, 'label': 'Active'},
          {'value': false, 'label': 'Inactive'}
        ],
        isRequired: false,
        displayOption: (option) => option['label'] as String,
      ),
      WrapSelectField(
        name: 'roles',
        label: 'Role',
        values: ['User', 'Owner'],
        isRequired: false,
      ),
      WrapSelectField(
        name: 'lead_source_type',
        label: 'Lead Source',
        values: [
          {'value': 'cold', 'label': 'Cold Leads'},
          {'value': 'hot', 'label': 'Hot Leads'}
        ],
        isRequired: false,
        displayOption: (option) => option['label'] as String,
        // valueTransformer: (p0) => p0?['value'],
      ),
      MultiDropDownField(
          label: 'Lead Source',
          items: [
            "Admin Created",
            "Agent Created",
            "Alba Cars",
            "Ask a Question",
            "Bayut",
            "Call Center",
            "Call Center 1",
            "Call Center 2",
            "Call Center 3",
            "DLD",
            "Dubizzle",
            "DubizzleHL",
            "Email",
            "Facebook Call",
            "Facebook Campaign",
            "Facebook Chat",
            "Get Matched Assistance",
            "Google Ads",
            "Hot Confidential",
            "Imported",
            "Instagram Call",
            "Instagram Campaign",
            "Instagram Chat",
            "New Listing",
            "Newsletter",
            "Off-Plan",
            "Property Finder",
            "Referral",
            "Register",
            "Saqib",
            "Snapchat",
            "TikTok",
            "Twitter",
            "Unkown Inbound Call",
            "Viewing",
            "Watti",
            "Whatsapp",
            "External REF0101",
            "External REF0102" ",External REF0103",
            "External REF0104",
            "External REF0105",
            "External RIK/Burj Vista",
            "External RIK/Creek Harbour",
            "External RIK/Palm",
            "External Ref0102",
            "External Ref0105",
            "External2023 Ref0101",
            "ExternalREF0105",
            "External%EF%BF%BDREF0105"
          ],
          name: 'lead_source_many'),
      DropDownfield(
          label: 'Lead Status',
          items: [
            "Fresh",
            "Prospect",
            "For Listing",
            "Follow up",
            "Appointment",
            "Viewing",
            "Negotiating",
            "Deal",
            "Won",
            "Lost",
            "Disqualified"
          ],
          name: 'lead_status'),
      DateField(
          name: 'fromDate',
          label: 'From Date',
          firstDate: DateTime(2000),
          lastDate: DateTime.now()),
      DateField(
          name: 'toDate',
          label: 'To Date',
          firstDate: DateTime(2000),
          lastDate: DateTime.now()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // SliverAppBar(
            //   title: SizedBox(
            //     height: 50,
            //     child: Image.asset(
            //       'assets/images/logo-black.png',
            //       fit: BoxFit.fitHeight,
            //     ),
            //   ),
            //   centerTitle: true,
            //   backgroundColor: Color.fromARGB(255, 240, 246, 250),
            //   foregroundColor: pacificBlue,
            //   leading: IconButton(
            //     onPressed: () {},
            //     icon: Icon(Icons.menu),
            //     padding: EdgeInsetsDirectional.only(start: 8),
            //   ),
            //   actions: [
            //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            //   ],
            //   pinned: true,
            // ),
            SliverVerticalSmallGap(),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TitleText(
                  text: 'Leads List',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: AppSearchBar(
                  searchText: "Search by name, email or phone",
                  onChanged: (val) {
                    context.read<LeadsCubit>().searchLeads(val);
                  },
                  filterFields: filterFields(),
                  onFilterApplied: (filter) {
                    context.read<LeadsCubit>().setLeadFilters(filter);
                  },
                  filter: context
                      .select((LeadsCubit value) => value.state.leadsFilter),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: WrapSelectField(
                name: '',
                values: [
                  'New',
                  'Recent',
                  'Prospect',
                  'Fresh',
                  'Hot',
                  'Hot & Fresh',
                  'Client with deals'
                ],
                // defaultValue: context.select((LeadsCubit c)=>c.state.),
                onSelected: (val) {
                  context.read<LeadsCubit>().setQuickFilter(val);
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<LeadsCubit, LeadsState, Paginator?>(
                        selector: (state) => state.leadsPaginator,
                        builder: (context, paginator) {
                          return RichText(
                              text: TextSpan(
                                  text: 'Count ',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  children: [
                                TextSpan(
                                  text: '${paginator?.itemCount ?? ''}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                )
                              ]));
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Sort : '),
                        BlocSelector<LeadsCubit, LeadsState, int>(
                          selector: (state) {
                            return state.sortDir;
                          },
                          builder: (context, sortDir) {
                            return TextButton(
                                onPressed: () {
                                  context.read<LeadsCubit>().setSortDir();
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      sortDir == 1 ? 'Oldest' : 'Newest',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                    ),
                                    Icon(
                                      sortDir == 1
                                          ? Icons.arrow_downward
                                          : Icons.arrow_upward,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    )
                                  ],
                                ));
                          },
                        )
                      ],
                    ),
                  ],
                )),
            BlocConsumer<LeadsCubit, LeadsState>(
              listenWhen: (previous, current) =>
                  previous.returnLeadsStatus != current.returnLeadsStatus &&
                  current.returnLeadsStatus == AppStatus.success,
              listener: (context, state) {
                showGeneralDialog(
                    barrierDismissible: true,
                    barrierLabel: "success",
                    context: context,
                    pageBuilder: (dContext, anim1, anim2) {
                      return BlocProvider.value(
                        value: context.read<LeadsCubit>(),
                        child: Builder(builder: (context) {
                          return Dialog(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.green,
                                      size: 100,
                                    ),
                                    VerticalSmallGap(),
                                    Text(
                                      'You have successfully returned Leads to yourself.',
                                      textAlign: TextAlign.center,
                                    ),
                                    VerticalSmallGap(),
                                    Text(
                                      'Please hold on for a bit before making another return, thank you.',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(dContext)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.w500),
                                    ),
                                    VerticalSmallGap(
                                      adjustment: 1.5,
                                    ),
                                    AppPrimaryButton(
                                        text: 'Close',
                                        onTap: () {
                                          Navigator.of(dContext).pop();
                                        })
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    });
              },
              builder: (context, state) {
                if (!state.selectModeEnabled) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.blueGrey.withOpacity(.4)),
                      height: 56,
                      child: ListTile(
                          leading: Icon(Icons.info_outline),
                          title: Text(
                              "Press and hold on any leads card for enabling multi select to return leads",
                              style: TextStyle(fontSize: 12))),
                    ),
                  );
                }
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            context
                                .read<LeadsCubit>()
                                .setSelectionModeDisabled();
                          },
                          icon: Icon(Icons.close)),
                      Text("${state.selectedLeads.length.toString()} Selected"),
                      Spacer(),
                      state.returnLeadsStatus == AppStatus.loading
                          ? SizedBox.square(
                              dimension: 24, child: CircularProgressIndicator())
                          : TextButton(
                              onPressed: () {
                                context
                                    .read<LeadsCubit>()
                                    .returnLeadInBulk(context: context);
                              },
                              child: Text('Return Selected'))
                    ],
                  ),
                );
              },
            ),
            Expanded(
              child: BlocBuilder<LeadsCubit, LeadsState>(
                builder: (context, state) {
                  if (state.getLeadsStatus == AppStatus.loading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  final leads = state.leads;
                  return NotificationListener<ScrollNotification>(
                    onNotification: (scrollInfo) {
                      if (state.getLeadsStatus != AppStatus.loadingMore &&
                          scrollInfo.metrics.pixels >=
                              0.9 * scrollInfo.metrics.maxScrollExtent &&
                          state.leadsPaginator?.hasNextPage == true) {
                        context.read<LeadsCubit>().getLeads();
                      }
                      return true;
                    },
                    child: RefreshIndicator.adaptive(
                      onRefresh: () async {
                        await context
                            .read<LeadsCubit>()
                            .getLeads(refresh: true);
                      },
                      child: ListView.separated(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        itemCount: state.getLeadsStatus != AppStatus.loadingMore
                            ? leads.length
                            : leads.length + 1,
                        itemBuilder: (context, index) {
                          if (index == leads.length) {
                            return SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          final lead = leads[index];
                          return LeadItem(lead: lead, colorScheme: colorScheme);
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 8,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeadItem extends StatelessWidget {
  const LeadItem({
    super.key,
    required this.lead,
    required this.colorScheme,
  });

  final Lead lead;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LeadsCubit, LeadsState, List<String>>(
      selector: (state) {
        return state.selectedLeads;
      },
      builder: (context, selectedLeads) {
        final selectModeEnabled =
            context.read<LeadsCubit>().state.selectModeEnabled;
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: selectModeEnabled && selectedLeads.contains(lead.id)
                  ? Border.all(
                      color: Theme.of(context).colorScheme.primary, width: 2)
                  : null,
              boxShadow: selectModeEnabled && selectedLeads.contains(lead.id)
                  ? [
                      BoxShadow(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(.5),
                          offset: Offset(-4, 5),
                          blurRadius: 19)
                    ]
                  : [
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(-4, 5),
                          blurRadius: 11)
                    ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
            child: InkWell(
              onTap: () {
                if (selectModeEnabled) {
                  context.read<LeadsCubit>().addToSelection(context, lead);
                } else {
                  context.pushNamed(LeadDetailScreen.routeName,
                      pathParameters: {'id': lead.id, 'index': '0'});
                }
              },
              onLongPress: () {
                context
                    .read<LeadsCubit>()
                    .setSelectionModeEnabled(context, lead);
              },
              child: Row(children: [
                Container(
                  width: 70,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[100]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // switch (lead.leadSource.toLowerCase()) {
                      //   'call' => Icon(
                      //       Icons.call,
                      //       color: Colors.grey,
                      //     ),
                      //   'whatsapp' => ImageIcon(
                      //       AssetImage(
                      //           'assets/images/whatsapp.png'),
                      //       color: Colors.grey,
                      //     ),
                      //   _ => Icon(
                      //       Icons.call,
                      //       color: Colors.grey,
                      //     )
                      // },
                      // VerticalSmallGap(
                      //   adjustment: 0.3,
                      // ),
                      NormalText(
                        text: lead.leadSource,
                        textAlign: TextAlign.center,
                        color: Colors.grey[800]!,
                      )
                    ],
                  ),
                ),
                HorizontalSmallGap(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 1.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blueGrey[100]),
                            child: SmallText(text: lead.leadStatus?.name ?? ''),
                          ),
                          HorizontalSmallGap(),
                          if (hotLeads.contains(lead.leadSource))
                            Image.asset(
                              'assets/images/flame.png',
                              height: 17,
                              width: 20,
                            ),
                          if (lead.dndStatus)
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.h, vertical: 1.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: colorScheme.error),
                                  borderRadius: BorderRadius.circular(4),
                                  color: colorScheme.errorContainer),
                              child: SmallText(text: 'DND'),
                            ),
                          if (lead.isNewTag) ...[
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.h, vertical: 1.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: colorScheme.error),
                                  borderRadius: BorderRadius.circular(4),
                                  color: colorScheme.error),
                              child: SmallText(
                                text: 'New',
                                color: colorScheme.onError,
                              ),
                            ),
                          ]
                        ],
                      ),
                      VerticalSmallGap(
                        adjustment: .2,
                      ),
                      LabelText(text: "${lead.firstName} ${lead.lastName}")
                    ],
                  ),
                ),
                HorizontalSmallGap(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CallButton(
                        onTap: () async {
                          if (lead.phone != null) {
                            context.read<CallBloc>().add(CallEvent.callStarted(
                                phoneNumber: lead.phone ?? '',
                                activityId: "",
                                leadId: lead.id));
                            final state = await getIt<CallBloc>()
                                .stream
                                .firstWhere((e) =>
                                    e.makeACallStatus != AppStatus.loading);
                            if (state.makeACallStatus == AppStatus.success) {
                              showSnackbar(
                                  context,
                                  'Call request sent successfully. please open linkus app to receieve call',
                                  SnackBarType.success);
                            } else {
                              showSnackbar(
                                  context,
                                  'Call request failed to send. error: ${state.makeACallError}',
                                  SnackBarType.failure);
                            }
                          }
                        },
                        isDnd: lead.dndStatus),
                  ],
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
