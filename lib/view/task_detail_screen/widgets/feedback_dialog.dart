import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/constants/activity_types.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_listing_screen/add_listing_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/space.dart';

import '../../../app/activity_cubit/activity_cubit.dart';
import '../../../model/activity_feedback_model.dart';
import '../../../model/activity_model.dart';
import '../../../model/property_model.dart';
import '../../../util/color_category.dart';
import '../../../util/property_price.dart';
import '../../../widgets/fields/card_picker_field.dart';
import '../../../widgets/fields/date_field.dart';
import '../../../widgets/fields/multi_line_textfield.dart';
import '../../../widgets/fields/time_field.dart';
import '../../../widgets/fields/wrap_select_field.dart';
import '../../../widgets/s3_image.dart';
import '../../../widgets/text.dart';
import '../../add_deal_screen/add_deal_screen.dart';
import '../task_detail_screen.dart';

class ActivityFeedbackDialog extends StatefulWidget {
  const ActivityFeedbackDialog({
    super.key,
    required this.activity,
    required this.parentContext,
    this.direction,
    this.mode,
  });

  final Activity activity;
  final BuildContext parentContext;
  final DismissDirection? direction;
  final CardAction? mode;

  @override
  State<ActivityFeedbackDialog> createState() => _ActivityFeedbackDialogState();
}

class _ActivityFeedbackDialogState extends State<ActivityFeedbackDialog> {
  late final ValueNotifier<String?> feedBackValue = ValueNotifier(null);
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  void initState() {
    feedBackValue.value = switch (widget.mode) {
      CardAction.Heart => 'Interested',
      CardAction.Charge => 'Very Interested',
      CardAction.Star => 'Deal',
      CardAction.ManuelSwipe =>
        widget.direction == DismissDirection.startToEnd ? 'Interested' : null,
      _ => null
    };

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // backgroundColor: Colors.white,
      clipBehavior: Clip.hardEdge,

      child: BlocProvider.value(
        value: widget.parentContext.read<TaskDetailCubit>(),
        child: ValueListenableBuilder(
            valueListenable: feedBackValue,
            builder: (context, value, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitleText(
                            text:
                                widget.direction == DismissDirection.endToStart
                                    ? 'Leave Feedback'
                                    : switch (widget.mode) {
                                        CardAction.Heart => 'Interested',
                                        CardAction.Charge => 'Make Prospect',
                                        CardAction.Star => 'Deal',
                                        _ => 'Complete task'
                                      }),
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.close,
                              size: 20,
                            ))
                      ],
                    ),
                    height: 60,
                    padding: EdgeInsets.only(
                        top: 20, left: 25, right: 25, bottom: 12),
                    width: double.infinity,
                    color: widget.direction == DismissDirection.startToEnd
                        ? Colors.green[200]
                        : widget.direction == DismissDirection.endToStart
                            ? Colors.red[200]
                            : lightPacific,
                  ),
                  VerticalSmallGap(),
                  Flexible(
                    child: ScrollShadow(
                      child: SingleChildScrollView(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: FormBuilder(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelText(
                                text: 'Feedback Note',
                                underline: true,
                              ),
                              VerticalSmallGap(),
                              if ((widget.direction ==
                                      DismissDirection.startToEnd &&
                                  (widget.mode == CardAction.Star)))
                                RadioListTile(
                                    value: 'Listing',
                                    title: Text('Win / Create new listing'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if ((widget.direction ==
                                      DismissDirection.startToEnd &&
                                  (widget.mode == CardAction.Star)))
                                RadioListTile(
                                    value: 'Deal',
                                    title: Text('Win / Create new deal'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if ((widget.direction ==
                                      DismissDirection.startToEnd &&
                                  widget.mode == CardAction.ManuelSwipe))
                                RadioListTile(
                                    value: 'Very Interested',
                                    title:
                                        Text('Very Interested / Make Prospect'),
                                    groupValue: value,
                                    contentPadding: EdgeInsets.zero,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if ((widget.direction ==
                                      DismissDirection.startToEnd &&
                                  widget.mode == CardAction.ManuelSwipe))
                                RadioListTile(
                                    value: 'Interested',
                                    title: Text('Interested'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if (widget.direction == null ||
                                  widget.direction ==
                                      DismissDirection.endToStart)
                                RadioListTile(
                                    value: 'Not Interested',
                                    title: Text('Not Interested'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if (widget.direction == null ||
                                  widget.direction ==
                                      DismissDirection.endToStart)
                                RadioListTile(
                                    value: 'Not Answered',
                                    title: Text('No Answer'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if (widget.direction == null ||
                                  widget.direction ==
                                      DismissDirection.endToStart)
                                RadioListTile(
                                    value: 'Invalid Number',
                                    title: Text('Invalid Number'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if (widget.direction == null ||
                                  widget.direction ==
                                      DismissDirection.endToStart)
                                RadioListTile(
                                    value: 'Disqualify',
                                    title: Text('Disqualify'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if (widget.direction == null ||
                                  widget.direction ==
                                      DismissDirection.endToStart)
                                RadioListTile(
                                    value: 'Do not Call',
                                    title: Text('Do not call'),
                                    groupValue: value,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    contentPadding: EdgeInsets.zero,
                                    onChanged: (val) {
                                      if (val != null)
                                        feedBackValue.value = val;
                                    }),
                              if (value == "Not Interested" ||
                                  value == "Disqualify" ||
                                  value == "Interested" ||
                                  value == "Very Interested")
                                MultiLineField(
                                  controller: _controller,
                                  placeHolder: "Write a brief note!",
                                  label: "Notes",
                                  name: 'notes',
                                  validator: (val) {
                                    if (val == null || val.length < 5) {
                                      return 'Please write a valid note';
                                    }
                                    return null;
                                  },
                                ),
                              if (value == "Invalid Number" ||
                                  value == "Do not Call")
                                FormBuilderCheckbox(
                                    name: 'acknowledgement',
                                    validator: (value) {
                                      if (value != true) {
                                        return "Please acknwoledge your action";
                                      }
                                    },
                                    contentPadding: EdgeInsets.zero,
                                    initialValue: false,
                                    title: NormalText(
                                      text:
                                          "Acknowledge your action by checking the box",
                                    ),
                                    onChanged: (val) {}),
                              if (feedBackValue.value == 'Interested' ||
                                  feedBackValue.value == 'Very Interested') ...[
                                LabelText(
                                  text: 'New Task',
                                  underline: true,
                                ),
                                VerticalSmallGap(),
                                WrapSelectField(
                                  name: 'type',
                                  label: 'Type',
                                  values: activityTypes,
                                  isRequired: true,
                                ),
                                DateField(
                                    isRequired: true,
                                    name: 'date',
                                    label: 'Date',
                                    firstDate: DateTime.now(),
                                    lastDate:
                                        DateTime.now().add(Duration(days: 90))),
                                TimeField(
                                  isRequired: true,
                                  name: 'time',
                                  label: 'Time',
                                ),
                                CardPickerDialogField<Property>(
                                  name: 'property',
                                  label: 'Property',
                                  isRequired: false,
                                  valueTransformer: (option) => option?.id,
                                  optionsBuilder: (v) async {
                                    return widget.parentContext
                                        .read<TaskDetailCubit>()
                                        .getListings(search: v.text);
                                  },
                                  optionBuilder: (context, listing) {
                                    return PropertyCardPickerItem(
                                        listing: listing);
                                  },
                                ),
                                MultiLineField(
                                  label: 'Description',
                                  name: 'description',
                                ),
                                VerticalSmallGap(),
                              ]
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    // color: lightPacific,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: ValueListenableBuilder(
                        valueListenable: feedBackValue,
                        builder: (context, value, _) {
                          return Column(
                            children: [
                              if (value == "Interested" ||
                                  value == 'Very Interested') ...[
                                if (widget.mode != CardAction.Star)
                                  AppPrimaryButton(
                                      onTap: () async {
                                        if (_formKey.currentState
                                                ?.saveAndValidate() !=
                                            true) {
                                          return;
                                        }
                                        final val =
                                            _formKey.currentState!.value;
                                        Logger().d({
                                          ...val,
                                          'interested': feedBackValue.value
                                        });
                                        await widget.parentContext
                                            .read<TaskDetailCubit>()
                                            .completeAndAddFollowUp(
                                                context: context,
                                                values: val,
                                                description: val['description'],
                                                markAsProspect:
                                                    feedBackValue.value ==
                                                        'Very Interested');
                                      },
                                      text: ('Add Followup')),
                                VerticalSmallGap(
                                  adjustment: 1,
                                ),
                              ],
                              if (((widget.mode == CardAction.ManuelSwipe ||
                                      widget.mode == CardAction.Star) &&
                                  feedBackValue.value == 'Deal'))
                                AppPrimaryButton(
                                    backgroundColor: Colors.green[800],
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }
                                      Navigator.of(context).pop(false);
                                      getIt<ActivityCubit>()
                                          .setLastActivityFeedback(
                                              widget.activity,
                                              ActivityFeedback(
                                                  isInterested: true,
                                                  status: 'Complete',
                                                  notes: _controller.text));
                                      widget.parentContext
                                          .pushNamed(AddDealScreen.routeName);
                                    },
                                    text: ('Complete & Add Deal')),
                              if (((widget.mode == CardAction.ManuelSwipe ||
                                      widget.mode == CardAction.Star) &&
                                  feedBackValue.value == 'Listing'))
                                AppPrimaryButton(
                                    backgroundColor: Colors.green[800],
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }
                                      Navigator.of(context).pop(false);
                                      getIt<ActivityCubit>()
                                          .setLastActivityFeedback(
                                              widget.activity,
                                              ActivityFeedback(
                                                  isInterested: true,
                                                  status: 'Complete',
                                                  notes: _controller.text));
                                      widget.parentContext.pushNamed(
                                          AddListingScreen.routeName);
                                    },
                                    text: ('Complete & Add Listing')),
                              if (value == "Not Interested") ...[
                                AppPrimaryButton(
                                    foregroundColor: Colors.red[800]!,
                                    borderShow: true,
                                    backgroundColor: Colors.white,
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }
                                      await widget.parentContext
                                          .read<TaskDetailCubit>()
                                          .makeLost(
                                            context: context,
                                            description: _controller.text,
                                          );
                                    },
                                    text: ('Mark Lost')),
                              ],
                              if (value == "Do not Call") ...[
                                AppPrimaryButton(
                                    foregroundColor: Colors.red[800]!,
                                    borderShow: true,
                                    backgroundColor: Colors.white,
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }
                                      await widget.parentContext
                                          .read<TaskDetailCubit>()
                                          .doNotCall(
                                            context: context,
                                            description: _controller.text,
                                          );
                                    },
                                    text: ('Mark as DND')),
                              ],
                              if (value == "Not Answered")
                                AppPrimaryButton(
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }

                                      await widget.parentContext
                                          .read<TaskDetailCubit>()
                                          .completeAndAddFollowUp(
                                              context: widget.parentContext,
                                              description: "Not Answered",
                                              markAsProspect: false,
                                              values: {
                                            ...context
                                                    .read<TaskDetailCubit>()
                                                    .state
                                                    .task
                                                    ?.toJson() ??
                                                {},
                                            "date": DateTime.now()
                                                .add(Duration(days: 1))
                                          });
                                      // Navigator.of(context).pop();
                                    },
                                    text: ('Schedule New Task')),
                              if (value == "Invalid Number" ||
                                  value == "Disqualify") ...[
                                AppPrimaryButton(
                                    foregroundColor: Colors.red[800]!,
                                    borderShow: true,
                                    backgroundColor: Colors.white,
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }

                                      await widget.parentContext
                                          .read<TaskDetailCubit>()
                                          .disqualify(
                                              context: widget.parentContext,
                                              description: _controller.text);
                                      // Navigator.of(context).pop();
                                    },
                                    text: 'Disqualify'),
                              ]
                            ],
                          );
                        }),
                  )
                ],
              );
            }),
      ),
    );
  }
}

class PropertyCardPickerItem extends StatelessWidget {
  const PropertyCardPickerItem({super.key, required this.listing});

  final Property listing;

  @override
  Widget build(BuildContext context) {
    String? image;
    if (listing.images?.isNotEmpty == true) {
      image = listing.images!.first is String
          ? listing.images!.first
          : listing.images!.first['thumbnail'];
    }
    return Container(
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: S3Image(
                          url: image,
                        ),
                      ),
                    ),
                    VerticalSmallGap(
                      adjustment: 0.5,
                    ),
                    BlockTitleText(
                      text: 'AED ' +
                          (getPrice(listing)?.toInt().toString() ?? ''),
                    ),
                  ],
                )),
            HorizontalSmallGap(),
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LabelText(
                      text: listing.propertyTitle,
                      maxLines: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    VerticalSmallGap(),
                    TextWithIcon(
                      text: (listing.beds?.toString() ?? "1") + ' Beds',
                      iconPath: 'assets/images/bed.png',
                      color: Colors.black,
                    ),
                    TextWithIcon(
                      text: (listing.baths?.toString() ?? "1") + " Baths",
                      iconPath: 'assets/images/shower.png',
                      color: Colors.black,
                    ),
                    TextWithIcon(
                      text: (listing.size?.toInt().toString() ?? "1") + ' Sqft',
                      iconPath: 'assets/images/area.png',
                      color: Colors.black,
                    ),
                    VerticalSmallGap(
                      adjustment: 0.3,
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Theme.of(context)
                              .colorScheme
                              .primaryContainer
                              .withOpacity(.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SmallText(text: 'Agent'),
                              LabelText(
                                  text: listing.agent?.user.firstName ?? ''),
                            ],
                          ),
                          HorizontalSmallGap(),
                          Container(
                            height: 40,
                            width: 40,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: S3Image(
                              url: listing.agent?.user.photo ?? '',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
