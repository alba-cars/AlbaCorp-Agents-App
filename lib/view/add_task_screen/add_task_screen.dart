import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_task_screen/cubit/add_task_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/card_picker_field.dart';
import 'package:real_estate_app/widgets/fields/date_field.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/space.dart';

import '../../util/color_category.dart';
import '../../util/property_price.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/text.dart';

class AddTaskScreen extends StatelessWidget {
  static const routeName = '/addTaskScreen';
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddTaskCubit>(),
      child: _AddTaskScreenLayout(),
    );
  }
}

class _AddTaskScreenLayout extends StatefulWidget {
  const _AddTaskScreenLayout({super.key});

  @override
  State<_AddTaskScreenLayout> createState() => _AddTaskScreenLayoutState();
}

class _AddTaskScreenLayoutState extends State<_AddTaskScreenLayout> {
  late final GlobalKey<FormBuilderState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final activity = getIt<ActivityCubit>().state.lastActivity;
    Logger().d(activity);
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
        centerTitle: true,
      ),
      body: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                AppTextField(
                  name: 'lead',
                  label: 'Lead Name',
                  disabled: true,
                  value:
                      "${activity?.lead?.firstName} ${activity?.lead?.lastName}",
                ),
                WrapSelectField(
                  name: 'type',
                  label: 'Type',
                  values: ['Call', 'WhatsApp', 'Viewing'],
                  isRequired: true,
                ),
                DateField(
                    name: 'date',
                    label: 'Date',
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 90))),
                CardPickerDialogField<Property>(
                  name: 'property',
                  label: 'Property',
                  isRequired: false,
                  optionsBuilder: (v) async {
                    return context
                        .read<AddTaskCubit>()
                        .getListings(search: v.text);
                  },
                  optionBuilder: (context, listing) {
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
                            BoxShadow(
                                color: shadowColor,
                                offset: Offset(-4, 5),
                                blurRadius: 11)
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
                                            borderRadius:
                                                BorderRadius.circular(12)),
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
                                          (getPrice(listing)
                                                  ?.toInt()
                                                  .toString() ??
                                              ''),
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
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    VerticalSmallGap(),
                                    TextWithIcon(
                                      text: (listing.beds?.toString() ?? "1") +
                                          ' Beds',
                                      iconPath: 'assets/images/bed.png',
                                      color: Colors.black,
                                    ),
                                    TextWithIcon(
                                      text: (listing.baths?.toString() ?? "1") +
                                          " Baths",
                                      iconPath: 'assets/images/shower.png',
                                      color: Colors.black,
                                    ),
                                    TextWithIcon(
                                      text: (listing.size?.toInt().toString() ??
                                              "1") +
                                          ' Sqft',
                                      iconPath: 'assets/images/area.png',
                                      color: Colors.black,
                                    ),
                                    VerticalSmallGap(
                                      adjustment: 0.3,
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer
                                              .withOpacity(.5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SmallText(text: 'Agent'),
                                              LabelText(
                                                  text: listing.agent?.user
                                                          .firstName ??
                                                      ''),
                                            ],
                                          ),
                                          HorizontalSmallGap(),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            clipBehavior: Clip.hardEdge,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle),
                                            child: S3Image(
                                              url: listing.agent?.user.photo ??
                                                  '',
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
                  },
                ),
                MultiLineField(
                  label: 'Description',
                  name: 'description',
                ),
                VerticalSmallGap(),
                AppPrimaryButton(
                    text: 'Confirm',
                    onTap: () async {
                      final validated =
                          _formKey.currentState?.saveAndValidate();
                      if (validated == true) {
                        final val = _formKey.currentState!.value;
                        await context.read<AddTaskCubit>().addActivity(
                            context: context,
                            leadId: activity?.lead?.id ?? '',
                            type: val['type'],
                            date: val['date'],
                            description: val['description'],
                            propertyId: val['property']);
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
