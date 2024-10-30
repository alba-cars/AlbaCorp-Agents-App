
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/chat_screen/chat_screen.dart';
import 'package:real_estate_app/view/ticket_detail_screen/cubit/ticket_details_cubit.dart';
import 'package:recase/recase.dart';

import '../../util/color_category.dart';
import '../../widgets/fields/attachment_field.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/space.dart';
import '../../widgets/text.dart';
import '../deal_details_screen/widgets/info_label_value.dart';
import '../image_viewer_screen/image_viewer.dart';
import '../pdf_view_screen/pdf_view_screen.dart';

class TicketDetailScreen extends StatelessWidget {
  static const routeName = '/ticketDetailScreen/:id';
  const TicketDetailScreen({super.key, required this.ticketId});
  final String ticketId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TicketDetailsCubit>(param1: ticketId),
      child: _TicketDetailScreenLayout(),
    );
  }
}

class _TicketDetailScreenLayout extends StatefulWidget {
  const _TicketDetailScreenLayout();

  @override
  State<_TicketDetailScreenLayout> createState() =>
      _TicketDetailScreenLayoutState();
}

class _TicketDetailScreenLayoutState extends State<_TicketDetailScreenLayout> {
  @override
  void initState() {
    context.read<TicketDetailsCubit>().getTicket();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket Details'),
        centerTitle: true,
       
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(ChatScreen.routeName, pathParameters: {
            'id': context.read<TicketDetailsCubit>().state.ticketId
          });
        },
        child: Icon(Icons.message_outlined),
      ),
      body: BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
        builder: (context, state) {
          final ticket = state.ticket;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerticalSmallGap(
                      adjustment: 2,
                    ),
                    TitleText(text: 'Ticket Details'),
                    VerticalSmallGap(),
                    Row(
                      children: [
                        SmallText(
                          text: 'ID',
                          color: Colors.blueGrey,
                        ),
                        HorizontalSmallGap(),
                        SmallText(text: ticket?.serialNumber ?? '')
                      ],
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: 'Last Modified',
                          color: Colors.blueGrey,
                        ),
                        HorizontalSmallGap(),
                        SmallText(
                            text: DateFormat.yMMMMEEEEd()
                                .format(ticket?.updatedAt ?? DateTime.now()))
                      ],
                    ),
                    VerticalSmallGap(
                      adjustment: 0.2,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.h),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blueGrey[100]),
                      child:
                          SmallText(text: ticket?.status.name.titleCase ?? ''),
                    ),
                  ],
                ),
              ),
              VerticalSmallGap(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    BlockTitleText(
                      text: 'Ticket Info',
                    ),
                  ],
                ),
              ),
              VerticalSmallGap(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoLabelValue(
                      labelOne: 'Request Type',
                      valueOne: ticket?.requestType.name.titleCase,
                      labelTwo: 'Assigned To',
                      valueTwo: ticket?.admin?.firstName ?? 'Unassigned',
                    ),
                    InfoLabelValue(
                      labelOne: 'Department',
                      valueOne: ticket?.department?.departmentName,
                      labelTwo: 'Type',
                      valueTwo: ticket?.type.name.titleCase,
                    ),
                    InfoLabelValue(
                      labelOne: 'Initiated By',
                      valueOne: ticket?.createdBy.name.titleCase,
                      labelTwo: 'Priority',
                      valueTwo: ticket?.priority.name.titleCase,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(
                            text: 'Description',
                            color: Colors.blueGrey,
                          ),
                          VerticalSmallGap(
                            adjustment: 0.1,
                          ),
                          NormalText(
                            text: ticket?.description ?? '',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    BlockTitleText(
                      text: 'Attachments',
                    ),
                  ],
                ),
              ),
              VerticalSmallGap(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: ticket?.attachments
                          ?.map((e) => InkWell(
                                onTap: () {
                                  if ((context
                                          .read<TicketDetailsCubit>()
                                          .getFileType(e)) ==
                                      FType.PDF) {
                                    context.pushNamed(PdfViewScreen.routeName,
                                        pathParameters: {'url': e});
                                  } else {
                                    context.pushNamed(
                                        ImageViewerScreen.routeName,
                                        pathParameters: {'url': e});
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueGrey,
                                      ),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6)),
                                          child: SizedBox(
                                            height: 60,
                                            width: 60,
                                            child: (context
                                                        .read<
                                                            TicketDetailsCubit>()
                                                        .getFileType(e)) ==
                                                    FType.PDF
                                                ? DottedBorder(
                                                    color: borderColor,
                                                    strokeWidth: 1,
                                                    radius:
                                                        const Radius.circular(
                                                            12),
                                                    dashPattern: const [
                                                      7,
                                                      7,
                                                    ],
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Center(
                                                          child: Image.asset(
                                                            'assets/images/choose_pdf_icon.png',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : S3Image(
                                                    url: e,
                                                  ),
                                          ), // This line ensures that there's a child, even if it's empty.
                                        ),
                                      ),
                                      HorizontalSmallGap(),
                                      Expanded(
                                        child: Text(
                                          e.split('/').last,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      HorizontalSmallGap(),
                                    ],
                                  ),
                                ),
                              ))
                          .toList() ??
                      [],
                ),
              )
              // AppPrimaryButton(
              //     text: 'Chat',
              //     onTap: () {
              //       context.pushNamed(ChatScreen.routeName);
              //     })
            ],
          );
        },
      ),
    );
  }
}
