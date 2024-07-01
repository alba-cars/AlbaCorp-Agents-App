import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/call_button.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../app/call_bloc/call_bloc.dart';
import '../../../model/lead_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/color_category.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';

class AboutTabView extends StatelessWidget {
  const AboutTabView({super.key, required this.lead});

  final Lead lead;

  @override
  Widget build(BuildContext context) {
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LabelText(text: 'Client Info:'),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 1.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blueGrey[100]),
                            child: SmallText(text: lead.leadStatus?.name ?? ''),
                          ),
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
                              text: lead.email ?? '',
                              icon: Icons.email_outlined,
                            ),
                          ),
                        ],
                      ),
                      VerticalSmallGap(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextWithIcon(
                              text: lead.address ?? 'N/A',
                              icon: Icons.location_on_outlined,
                            ),
                          ),
                          Expanded(
                            child: TextWithIcon(
                              text: lead.preferredLanguages.fold(
                                  '',
                                  (previousValue, element) =>
                                      '$previousValue, $element'),
                              icon: Icons.language_outlined,
                            ),
                          ),
                        ],
                      ),
                      VerticalSmallGap(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CallButton(
                              onTap: () {
                                getIt<CallBloc>().add(CallEvent.clickToCall(
                                  phoneNumber: lead.phone ?? '',
                                ));
                              },
                              isDnd: lead.dndStatus),
                          WhatsAppButton(
                              onTap: () {
                                launchUrlString(
                                    'whatsapp://send?phone=${lead.phone}');
                              },
                              isDnd: lead.dndStatus),
                          IconButton.filledTonal(
                              onPressed: () async {
                                final uri = Uri.parse('mailto:${lead.email}');
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                } else {
                                  showSnackbar(
                                      context,
                                      'Can not launch the app',
                                      SnackBarType.failure);
                                }
                              },
                              icon: Icon(Icons.email_outlined))
                        ],
                      ),
                      if (lead.leadStatus == LeadStatus.FollowUp) ...[
                        VerticalSmallGap(),
                        Align(
                            alignment: Alignment.center,
                            child: AppPrimaryButton(
                                text: 'Mark it as Prospect',
                                onTap: () async {
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
                                }))
                      ],
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
                Container(
                  color: Colors.white,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LabelText(text: 'TAGS'),
                            TextButton(
                              onPressed: () {},
                              child: Text('ADD'),
                            )
                          ],
                        ),
                        VerticalSmallGap(),
                        lead.tags.isEmpty
                            ? NormalText(text: 'No Tags Found')
                            : Wrap(
                                spacing: 12,
                                runSpacing: 12,
                                children: lead.tags
                                    .map((e) => Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey[50],
                                              border: Border.all(
                                                  color: Colors.blueGrey[200]!),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SmallText(text: e),
                                              // HorizontalSmallGap(),
                                              // IconButton(
                                              //     style: IconButton.styleFrom(
                                              //         padding: EdgeInsets.all(1),
                                              //         visualDensity: VisualDensity(),
                                              //         tapTargetSize:
                                              //             MaterialTapTargetSize.shrinkWrap),
                                              //     onPressed: () {},
                                              //     icon: Icon(
                                              //       Icons.close,
                                              //       size: 14,
                                              //     ))
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              ),
                        VerticalSmallGap(),
                        Divider(),
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
                          text: 'Dubai',
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
                          text: 'Dubai',
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
