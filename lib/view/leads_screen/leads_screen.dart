import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/leads_screen/cubit/leads_cubit.dart';
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
                child: AppSearchBar(),
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
