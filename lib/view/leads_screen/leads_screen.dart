import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/leads_screen/cubit/leads_cubit.dart';
import 'package:real_estate_app/widgets/fields/date_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/search_bar.dart';

import '../../util/color_category.dart';
import '../../util/status.dart';
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
          {
            'value': [
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
            'label': 'Cold Leads'
          },
          {
            'value': [
              "Admin Created",
              "Agent Created",
              "Alba Cars" ",Ask a Question",
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
              "Whatsapp"
            ],
            'label': 'Hot Leads'
          }
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
        body: BlocBuilder<LeadsCubit, LeadsState>(
          builder: (context, state) {
            if (state.getLeadsStatus == Status.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final leads = state.leads;
            return NotificationListener<ScrollNotification>(
              onNotification: (scrollInfo) {
                if (state.getLeadsStatus != Status.loadingMore &&
                    scrollInfo.metrics.pixels >=
                        0.9 * scrollInfo.metrics.maxScrollExtent) {
                  context.read<LeadsCubit>().getLeads();
                }
                return true;
              },
              child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  await context.read<LeadsCubit>().getLeads(refresh: true);
                },
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  itemCount: state.getLeadsStatus != Status.loadingMore
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
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.h),
                          boxShadow: [
                            BoxShadow(
                                color: shadowColor,
                                offset: Offset(-4, 5),
                                blurRadius: 11)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 6.h),
                        child: InkWell(
                          onTap: () {
                            context.pushNamed(LeadDetailScreen.routeName,
                                pathParameters: {'id': lead.id});
                          },
                          child: Row(children: [
                            Container(
                              width: 70,
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 4),
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
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.h, vertical: 1.h),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.blueGrey),
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.blueGrey[100]),
                                    child: SmallText(
                                        text: lead.leadStatus?.name ?? ''),
                                  ),
                                  VerticalSmallGap(
                                    adjustment: .2,
                                  ),
                                  LabelText(
                                      text:
                                          "${lead.firstName} ${lead.lastName}")
                                ],
                              ),
                            ),
                            HorizontalSmallGap(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton.filledTonal(
                                    onPressed: () async {},
                                    icon: Icon(
                                      Icons.call,
                                    ))
                              ],
                            )
                          ]),
                        ),
                      ),
                    );
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
    );
  }
}
