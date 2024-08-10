import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/util/share_company_profile.dart';
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/view/lead_detail_screen/widgets/activity_list.dart';
import 'package:real_estate_app/view/listing_detail_screen/widgets/activity_list.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/call_button.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../app/call_bloc/call_bloc.dart';
import '../../../model/lead_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/color_category.dart';
import '../../../util/status.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';

class AboutTabView extends StatelessWidget {
  const AboutTabView({super.key, required this.lead});

  final Lead lead;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return RefreshIndicator.adaptive(
      onRefresh: () => context.read<LeadDetailCubit>().getLeadDetails(),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: shadowColor,
                        offset: Offset(-4, 5),
                        blurRadius: 11)
                  ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LabelText(text: 'Client Info:'),
                          Spacer(),
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
                          IconButton(
                              // style: IconButton.styleFrom(
                              //     backgroundColor: Colors.red[100]),
                              onPressed: () async {
                                final result = await context
                                    .read<LeadDetailCubit>()
                                    .updateLead({"lead_status": "Prospect"});
                                if (result) {
                                  showSnackbar(
                                      context,
                                      'Successfully marked as prospect',
                                      SnackBarType.success);
                                } else {
                                  final error = context
                                      .read<LeadDetailCubit>()
                                      .state
                                      .updateLeadError;
                                  showSnackbar(
                                      context,
                                      error ?? 'Failed to mark as prospect',
                                      SnackBarType.failure);
                                }
                              },
                              icon: Icon(
                                lead.leadStatus == LeadStatus.Prospect
                                    ? CupertinoIcons.heart_fill
                                    : CupertinoIcons.heart,
                                color: Colors.red,
                              ))
                        ],
                      ),
                      VerticalSmallGap(),
                      TitleText(text: '${lead.firstName} ${lead.lastName}'),
                      VerticalSmallGap(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextWithIcon(
                              text: '${lead.phone}',
                              icon: Icons.call,
                            ),
                          ),
                          Expanded(
                            child: TextWithIcon(
                              text: lead.email == null ||
                                      lead.email?.contains(
                                              'generated@alba.homes') ==
                                          true ||
                                      lead.email?.contains(
                                              '@generated.alba.homes') ==
                                          true
                                  ? "N/A"
                                  : lead.email ?? '',
                              icon: Icons.email_outlined,
                            ),
                          ),
                        ],
                      ),
                      VerticalSmallGap(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: OutlinedButton(
                                onPressed: () async {
                                  getIt<CallBloc>().add(CallEvent.clickToCall(
                                    phoneNumber: lead.phone ?? '',
                                  ));
                                  final state = await getIt<CallBloc>()
                                      .stream
                                      .firstWhere((e) =>
                                          e.makeACallStatus !=
                                          AppStatus.loading);
                                  if (state.makeACallStatus ==
                                      AppStatus.success) {
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
                                },
                                child: Icon(Icons.call)),
                          ),
                          HorizontalSmallGap(),
                          Expanded(
                            child: OutlinedButton(
                                onPressed: () async {
                                  if (await canLaunchUrlString(
                                      "https://wa.me/${lead.phone?.replaceFirst("+", "")}")) {
                                    launchUrlString(
                                        "https://wa.me/${lead.phone?.replaceFirst("+", "")}");
                                  } else {
                                    showSnackbar(
                                        context,
                                        'Can not launch the app',
                                        SnackBarType.failure);
                                  }
                                },
                                child: ImageIcon(
                                    AssetImage('assets/images/whatsapp.png'))),
                          ),
                          HorizontalSmallGap(),
                          Expanded(
                            child: OutlinedButton(
                                onPressed: () async {
                                  shareCompanyProfile();
                                },
                                child: Icon(Platform.isIOS
                                    ? CupertinoIcons.share
                                    : Icons.share)),
                          )
                        ],
                      ),
                      if (lead.leadStatus == LeadStatus.Viewing) ...[
                        VerticalSmallGap(),
                        Align(
                            alignment: Alignment.center,
                            child: AppPrimaryButton(
                                text: 'Mark it as Negotiating',
                                onTap: () {
                                  context.read<LeadDetailCubit>().updateLead(
                                      {"lead_status": "Negotiating"});
                                }))
                      ],
                      if (lead.leadStatus == LeadStatus.Negotiating) ...[
                        VerticalSmallGap(),
                        Align(
                            alignment: Alignment.center,
                            child: AppPrimaryButton(
                                text: 'Mark it as Deal',
                                onTap: () {
                                  context
                                      .read<LeadDetailCubit>()
                                      .updateLead({"lead_status": "Deal"});
                                }))
                      ]
                    ],
                  ),
                ),
                VerticalSmallGap(
                  adjustment: 2,
                ),
                BlocSelector<LeadDetailCubit, LeadDetailState, List<Activity>>(
                  selector: (state) {
                    return state.activities;
                  },
                  builder: (context, activities) {
                    return ActivityListLeadDetail(
                        activities: activities.sublist(
                            0, activities.length > 5 ? 5 : activities.length));
                  },
                ),
                VerticalSmallGap(
                  adjustment: 2,
                ),
                Container(
                  color: Colors.white,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VerticalSmallGap(),
                        LabelText(
                          text: 'LEAD DETAILS',
                          underline: true,
                          color: Theme.of(context).primaryColor,
                        ),
                        VerticalSmallGap(),
                        NormalText(
                          text: 'LEAD SOURCE',
                          color: Colors.blueGrey,
                        ),
                        VerticalSmallGap(
                          adjustment: 0.3,
                        ),
                        NormalText(
                          text: lead.leadSource,
                        ),
                        Divider(),
                        VerticalSmallGap(adjustment: .6),
                        NormalText(
                          text: 'CITY',
                          color: Colors.blueGrey,
                        ),
                        VerticalSmallGap(
                          adjustment: 0.3,
                        ),
                        NormalText(
                          text: lead.city ?? 'N/A',
                        ),
                        Divider(),
                        VerticalSmallGap(adjustment: .6),
                        NormalText(
                          text: 'CITY',
                          color: Colors.blueGrey,
                        ),
                        VerticalSmallGap(
                          adjustment: 0.3,
                        ),
                        NormalText(
                          text: lead.city ?? 'N/A',
                        ),
                        Divider(),
                        VerticalSmallGap(adjustment: .6),
                        NormalText(
                          text: 'Created On',
                          color: Colors.blueGrey,
                        ),
                        VerticalSmallGap(
                          adjustment: 0.3,
                        ),
                        NormalText(
                          text: lead.createdAt?.formatted,
                        ),
                        Divider(),
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
