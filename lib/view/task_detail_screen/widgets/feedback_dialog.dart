import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/constants/activity_types.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/property_price.dart';
import 'package:real_estate_app/view/add_listing_screen/add_listing_screen.dart';
import 'package:real_estate_app/view/add_pocket_listing_screen/add_pocket_listing_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/card_picker_field.dart';
import 'package:real_estate_app/widgets/fields/date_field.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/fields/time_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../app/activity_cubit/activity_cubit.dart';
import '../../../model/activity_feedback_model.dart';
import '../../../model/activity_model.dart';
import '../../../service_locator/injectable.dart';
import '../../add_deal_screen/add_deal_screen.dart';

// Enums for better type safety
enum FeedbackType {
  interested('Interested'),
  veryInterested('Very Interested'),
  notInterested('Not Interested'),
  notAnswered('Not Answered'),
  invalidNumber('Invalid Number'),
  disqualify('Disqualify'),
  doNotCall('Do not Call'),
  listing('Listing'),
  deal('Deal'),
  pocketListing('Pocket Listing');

  final String value;
  const FeedbackType(this.value);
}

class ActivityFeedbackDialog extends StatefulWidget {
  const ActivityFeedbackDialog(
      {super.key,
      required this.activity,
      this.direction,
      this.mode,
      this.notes,
      required this.parentContext});

  final Activity activity;
  final BuildContext parentContext;
  final DismissDirection? direction;
  final CardAction? mode;
  final String? notes;

  @override
  State<ActivityFeedbackDialog> createState() => _ActivityFeedbackDialogState();
}

enum CallLaterValue { ONE_HOUR, ONE_DAY }

class _ActivityFeedbackDialogState extends State<ActivityFeedbackDialog> {
  late final ValueNotifier<FeedbackType?> feedbackValue;
  late final ValueNotifier<CallLaterValue> callLaterValue;
  late final TextEditingController _controller;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _initializeFeedbackValue();
    _initializeController();
    callLaterValue = ValueNotifier(CallLaterValue.ONE_DAY);
  }

  Duration getFollowUpDateLimit() {
    if ([
          LeadStatus.Prospect,
          LeadStatus.Appointment,
          LeadStatus.Negotiating,
          LeadStatus.Viewing,
          LeadStatus.ForListing
        ].contains(widget.activity.lead?.leadStatus) ||
        ([FeedbackType.veryInterested].contains(feedbackValue.value))) {
      return Duration(days: 30);
    }
    if (widget.activity.lead?.leadStatus ==
            [
              LeadStatus.Deal,
              LeadStatus.Won,
            ] ||
        ([FeedbackType.listing, FeedbackType.deal]
            .contains(feedbackValue.value))) {
      return Duration(days: 2 * 30);
    }

    return Duration(days: 15);
  }

  void _initializeFeedbackValue() {
    FeedbackType? initialValue = switch (widget.mode) {
      CardAction.Heart => FeedbackType.interested,
      CardAction.Charge => FeedbackType.veryInterested,
      CardAction.Star => FeedbackType.listing,
      CardAction.ManuelSwipe => widget.direction == DismissDirection.startToEnd
          ? FeedbackType.interested
          : null,
      _ => null
    };
    feedbackValue = ValueNotifier(initialValue);
  }

  void _initializeController() {
    _controller = TextEditingController(text: widget.notes ?? "");
  }

  @override
  void dispose() {
    _controller.dispose();
    feedbackValue.dispose();
    super.dispose();
  }

  Widget _buildHeader() {
    String title = widget.direction == DismissDirection.endToStart
        ? 'Leave Feedback'
        : switch (widget.mode) {
            CardAction.Heart => 'Interested',
            CardAction.Charge => 'Make Prospect',
            CardAction.Star => 'Deal',
            _ => 'Complete task'
          };

    Color backgroundColor = widget.direction == DismissDirection.startToEnd
        ? Colors.green[200]!
        : widget.direction == DismissDirection.endToStart
            ? Colors.red[200]!
            : lightPacific;

    return Container(
      height: 60,
      padding: EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 12),
      width: double.infinity,
      color: backgroundColor,
      child: _HeaderContent(title: title),
    );
  }

  Widget _buildFeedbackOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_shouldShowPositiveFeedback()) ..._buildPositiveFeedbackOptions(),
        if (_shouldShowNegativeFeedback()) ..._buildNegativeFeedbackOptions(),
      ],
    );
  }

  bool _shouldShowPositiveFeedback() {
    return widget.direction == DismissDirection.startToEnd ||
        widget.mode == CardAction.Star ||
        widget.mode == CardAction.ManuelSwipe;
  }

  bool _shouldShowNegativeFeedback() {
    return widget.direction == null ||
        widget.direction == DismissDirection.endToStart;
  }

  List<Widget> _buildPositiveFeedbackOptions() {
    return [
      if (widget.mode == CardAction.Star) ...[
        _buildFeedbackRadio(FeedbackType.listing, 'Win / Create new listing'),
        _buildFeedbackRadio(FeedbackType.deal, 'Win / Create new deal'),
        _buildFeedbackRadio(
            FeedbackType.pocketListing, 'Create pocket listing'),
      ],
      if (widget.mode == CardAction.ManuelSwipe) ...[
        _buildFeedbackRadio(
            FeedbackType.veryInterested, 'Very Interested / Make Prospect'),
        _buildFeedbackRadio(FeedbackType.interested, 'Interested'),
      ],
    ];
  }

  List<Widget> _buildNegativeFeedbackOptions() {
    return [
      _buildFeedbackRadio(FeedbackType.notInterested, 'Not Interested'),
      _buildFeedbackRadio(FeedbackType.notAnswered, 'No Answer'),
      _buildFeedbackRadio(FeedbackType.invalidNumber, 'Invalid Number'),
      _buildFeedbackRadio(FeedbackType.disqualify, 'Disqualify'),
      _buildFeedbackRadio(FeedbackType.doNotCall, 'Do not call'),
    ];
  }

  Widget _buildFeedbackRadio(FeedbackType type, String label) {
    return RadioListTile<FeedbackType>(
      value: type,
      groupValue: feedbackValue.value,
      title: Text(label),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      contentPadding: EdgeInsets.zero,
      onChanged: (val) {
        if (val != null) feedbackValue.value = val;
      },
    );
  }

  Widget _buildNoteField() {
    bool shouldShowNotes = [
      FeedbackType.notInterested,
      FeedbackType.disqualify,
      FeedbackType.interested,
      FeedbackType.veryInterested,
    ].contains(feedbackValue.value);

    if (!shouldShowNotes) return SizedBox();

    return MultiLineField(
      controller: _controller,
      placeHolder: "Write a brief note!",
      label: "Notes",
      name: 'notes',
      validator: _noteValidator,
    );
  }

  String? _noteValidator(String? val) {
    if (val == null || val.length < 5) {
      return 'Please write a valid note';
    }
    return null;
  }

  Widget _buildFollowUpForm() {
    if (![FeedbackType.interested, FeedbackType.veryInterested]
        .contains(feedbackValue.value)) {
      return SizedBox();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LabelText(text: 'New Task', underline: true),
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
          lastDate: DateTime.now().add(getFollowUpDateLimit()),
        ),
        TimeField(
          isRequired: false,
          name: 'time',
          label: 'Time',
        ),
        CardPickerDialogField<Property>(
          name: 'property',
          label: 'Property',
          isRequired: false,
          valueTransformer: (option) => option?.id,
          optionsBuilder: (v, {isRefresh}) async {
            return context
                .read<TaskDetailCubit>()
                .getListings(search: v.text, isRefresh: isRefresh ?? false);
          },
          optionBuilder: (context, listing) {
            return PropertyCardPickerItem(listing: listing);
          },
        ),
        MultiLineField(
          label: 'Add a note for next activity',
          name: 'description',
        ),
        VerticalSmallGap(),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: feedbackValue,
      builder: (context, FeedbackType? value, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_shouldShowFollowUpButton(value)) _buildFollowUpButton(context),
            if (_shouldShowDealButton(value)) _buildDealButton(context),
            if (_shouldShowListingButton(value)) _buildListingButton(),
            if (_shouldShowPocketListingButton(value))
              _buildPocketListingButton(),
            if (value == FeedbackType.notInterested) _buildLostButton(context),
            if (value == FeedbackType.doNotCall) _buildDNDButton(context),
            if (value == FeedbackType.notAnswered) _buildNewTaskButton(context),
            if ([FeedbackType.invalidNumber, FeedbackType.disqualify]
                .contains(value))
              _buildDisqualifyButton(value, context),
          ],
        );
      },
    );
  }

  bool _shouldShowFollowUpButton(FeedbackType? value) {
    return [FeedbackType.interested, FeedbackType.veryInterested]
            .contains(value) &&
        widget.mode != CardAction.Star;
  }

  bool _shouldShowDealButton(FeedbackType? value) {
    return value == FeedbackType.deal &&
        (widget.mode == CardAction.ManuelSwipe ||
            widget.mode == CardAction.Star);
  }

  bool _shouldShowListingButton(FeedbackType? value) {
    return value == FeedbackType.listing &&
        (widget.mode == CardAction.ManuelSwipe ||
            widget.mode == CardAction.Star);
  }

  bool _shouldShowPocketListingButton(FeedbackType? value) {
    return value == FeedbackType.pocketListing &&
        (widget.mode == CardAction.ManuelSwipe ||
            widget.mode == CardAction.Star);
  }

  // Action Button Builders
  Widget _buildFollowUpButton(BuildContext context) {
    return AppPrimaryButton(
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;

        final val = _formKey.currentState!.value;
        await context.read<TaskDetailCubit>().completeAndAddFollowUp(
              context: context,
              task: widget.activity,
              values: Map.from(val),
              currentActivityNotes: val['notes'],
              markAsProspect:
                  feedbackValue.value == FeedbackType.veryInterested,
            );
      },
      text: 'Add Followup',
    );
  }

  Widget _buildDealButton(BuildContext context) {
    return AppPrimaryButton(
      backgroundColor: Colors.green[800],
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;

        Navigator.of(context).pop(false);
        getIt<ActivityCubit>().setLastActivityFeedback(
          widget.activity,
          ActivityFeedback(
            isInterested: true,
            status: 'Complete',
            notes: _controller.text,
          ),
        );

        widget.parentContext.pushNamed(AddDealScreen.routeName);
      },
      text: 'Complete & Add Deal',
    );
  }

// Listing Button
  Widget _buildListingButton() {
    return AppPrimaryButton(
      backgroundColor: Colors.green[800],
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;

        Navigator.of(context).pop(false);
        getIt<ActivityCubit>().setLastActivityFeedback(
          widget.activity,
          ActivityFeedback(
            isInterested: true,
            status: 'Complete',
            notes: _controller.text,
          ),
        );

        final lead = widget.activity.lead;
        widget.parentContext.pushNamed(
          AddListingScreen.routeName,
          queryParameters: {
            "lead": json.encode(lead?.toJson()),
          },
        );
      },
      text: 'Complete & Add Listing',
    );
  }

  Widget _buildPocketListingButton() {
    return AppPrimaryButton(
      backgroundColor: Colors.green[800],
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;

        Navigator.of(context).pop(false);
        getIt<ActivityCubit>().setLastActivityFeedback(
          widget.activity,
          ActivityFeedback(
            isInterested: true,
            status: 'Complete',
            notes: _controller.text,
          ),
        );

        final lead = widget.activity.lead;
        widget.parentContext.pushNamed(
          AddPocketListingScreen.routeName,
          queryParameters: {
            "lead": json.encode(lead?.toJson()),
          },
        );
      },
      text: 'Complete & Add Pocket Listing',
    );
  }

// Lost Button
  Widget _buildLostButton(BuildContext context) {
    return AppPrimaryButton(
      foregroundColor: Colors.red[800]!,
      borderShow: true,
      backgroundColor: Colors.white,
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;

        await context.read<TaskDetailCubit>().makeLost(
              context: context,
              task: widget.activity,
              description: _controller.text,
            );
      },
      text: 'Mark Lost',
    );
  }

// Do Not Disturb Button
  Widget _buildDNDButton(BuildContext context) {
    return AppPrimaryButton(
      foregroundColor: Colors.red[800]!,
      borderShow: true,
      backgroundColor: Colors.white,
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;

        await context.read<TaskDetailCubit>().doNotCall(
              context: context,
              task: widget.activity,
              description: _controller.text,
            );
      },
      text: 'Mark as DND',
    );
  }

// New Task Button
  Widget _buildNewTaskButton(BuildContext context) {
    return AppPrimaryButton(
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;
        final hours = callLaterValue.value == CallLaterValue.ONE_DAY ? 24 : 1;
        final now = DateTime.now();
        final scheduledDate = now.add(Duration(hours: hours));
        await context.read<TaskDetailCubit>().completeAndAddFollowUp(
          context: context,
          task: widget.activity,
          currentActivityNotes: "Not Answered",
          markAsProspect: false,
          values: {
            ...context.read<TaskDetailCubit>().state.task?.toJson() ?? {},
            "date": scheduledDate,
            "time": TimeOfDay(
              hour: scheduledDate.hour,
              minute: scheduledDate.minute,
            ),
          },
        );
      },
      text: 'Schedule New Task',
    );
  }

// Disqualify Button
  Widget _buildDisqualifyButton(FeedbackType? value, BuildContext context) {
    return AppPrimaryButton(
      foregroundColor: Colors.red[800]!,
      borderShow: true,
      backgroundColor: Colors.white,
      onTap: () async {
        FocusScope.of(context).unfocus();
        if (!_formKey.currentState!.saveAndValidate()) return;

        await context.read<TaskDetailCubit>().disqualifyOrInvalidNumber(
              context: context,
              task: widget.activity,
              feedbackType: value == FeedbackType.invalidNumber
                  ? FeedbackTypeEnum.invalidNumber
                  : FeedbackTypeEnum.disqualify,
              description: value == FeedbackType.invalidNumber
                  ? "Invalid Number"
                  : _controller.text,
            );
      },
      text: 'Disqualify',
    );
  }

  _buildRatingBar(BuildContext context) {
    final value = context.select(
      (TaskDetailCubit value) => value.state.ratingValue,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        SizedBox(
          height: 4,
        ),
        Text("Lead Rating"),
        SizedBox(
          height: 4,
        ),
        Slider(
            value: value ?? 5.0,
            min: 0,
            max: 10,
            label: value.toString(),
            divisions: 20,
            onChanged: (v) {
              context.read<TaskDetailCubit>().onRAtingChanged(v);
            }),
        Center(
            child: Text(
          "Your rating is $value out of 10",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary),
        ))
        // Padding(
        //   padding:  EdgeInsets.zero,
        //   child: SfSlider(

        //     stepSize: 0.05,
        //       value: value ?? 0.5,
        //       interval: 20,
        //       onChanged: (v) {
        //         context.read<TaskDetailCubit>().onRAtingChanged(v);
        //       }),
        // ),
      ],
    );
  }

  _buildScheduleTimeForNoAnswer(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: callLaterValue,
        builder: (context, value, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              SizedBox(
                height: 4,
              ),
              Text("Schedule Time"),
              SizedBox(
                height: 4,
              ),
              RadioListTile<CallLaterValue>(
                contentPadding: EdgeInsets.zero,
                title: Text("After 1 hour"),
                value: CallLaterValue.ONE_HOUR,
                groupValue: value, // Add this variable to your state
                onChanged: (value) {
                  if (value != null) callLaterValue.value = value;
                },
              ),
              RadioListTile<CallLaterValue>(
                contentPadding: EdgeInsets.zero,
                title: Text("After 1 day"),
                value: CallLaterValue.ONE_DAY,
                groupValue: value,
                onChanged: (value) {
                  if (value != null) callLaterValue.value = value;
                },
              ),
              SizedBox(height: 8),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.hardEdge,
      child: ValueListenableBuilder(
          valueListenable: feedbackValue,
          builder: (context, value, _) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildHeader(),
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
                            LabelText(text: 'Feedback Note', underline: true),
                            VerticalSmallGap(),
                            _buildFeedbackOptions(),
                            _buildNoteField(),
                            Visibility(
                              visible: shouldShowRating(feedbackValue.value),
                              child: _buildRatingBar(context),
                            ),
                            Visibility(
                              visible: feedbackValue.value ==
                                  FeedbackType.notAnswered,
                              child: _buildScheduleTimeForNoAnswer(context),
                            ),
                            _buildFollowUpForm(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: _buildActionButtons(context),
                ),
              ],
            );
          }),
    );
  }
}

bool shouldShowRating(FeedbackType? selectedFeedbackType) {
  if (selectedFeedbackType == null) return false;
  const ratingBypassStatus = [
    FeedbackType.doNotCall,
    FeedbackType.invalidNumber,
    FeedbackType.notAnswered,
    FeedbackTypeEnum.doNotDial
  ];

  return !ratingBypassStatus.contains(selectedFeedbackType);
}

// Extracted Header Component
class _HeaderContent extends StatelessWidget {
  final String title;

  const _HeaderContent({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(text: title),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.close, size: 20),
        ),
      ],
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
                  mainAxisSize: MainAxisSize.min,
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
                  mainAxisSize: MainAxisSize.min,
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SmallText(
                                  text: 'Agent',
                                  maxLines: 1,
                                ),
                                LabelText(
                                    text: listing.agent?.user.firstName ?? ''),
                              ],
                            ),
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

class CustomSliderTrackShape extends RoundedRectSliderTrackShape {
  const CustomSliderTrackShape();
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
