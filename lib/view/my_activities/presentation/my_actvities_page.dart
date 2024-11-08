import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/constants/activity_types.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/user_list_data.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/my_activities/cubit/my_activities_cubit.dart';
import 'package:real_estate_app/view/my_activities/presentation/widgets/my_activities_item_widget.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';

class MyActvitiesPage extends StatefulWidget {
  static const routeName = '/myActivitiesScreen';
  const MyActvitiesPage({super.key});

  @override
  State<MyActvitiesPage> createState() => _MyActvitiesPageState();
}

class _MyActvitiesPageState extends State<MyActvitiesPage> {
  UserListData? selectedUser;
  String? selectedActivityStatus;
  DateTime? selectedDateTime;
  Map<String, dynamic> searchParams = {
    "selectedUser": null,
    "selectedActivityStatus": null,
    "selectedDateTime": null
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Actvities'),
        centerTitle: true,
      ),
      body: BlocBuilder<MyActivitiesCubit, MyActivitiesState>(
        builder: (context, state) => SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  SizedBox(
                    width: 65,
                    child: Column(
                      children: [
                        Text(
                          "Group by:",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedActivityStatus = null;
                              selectedUser = null;
                            });
                          },
                          child: Text(
                            "Clear",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Colors.indigo,
                                    decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 65,
                    child: VerticalDivider(),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 46,
                            child: AppAutoComplete(
                                name: 'user',
                                hint: 'Select client',
                                isRequired: true,
                                value: selectedUser,
                                valueTransformer: (p0) => p0?.id,
                                onSelected: (value) {
                                  selectedUser = value;
                                  context
                                      .read<MyActivitiesCubit>()
                                      .getAgentActivities(
                                          userId: selectedUser?.id,
                                          status: selectedActivityStatus ?? "",
                                          dates: selectedDateTime != null
                                              ? [selectedDateTime!]
                                              : null,
                                          paginator: null);
                                },
                                controller: AutoCompleteFieldController(),
                                displayStringForOption: (user) =>
                                    "${user.name} | ${user.phone}" ?? "",
                                optionsBuilder: (v, refresh) async {
                                  if (v.text.length > 2) {
                                    Logger().d("On text changed ${v.text}");
                                    return context
                                        .read<MyActivitiesCubit>()
                                        .getActivitiesUser(
                                            searchParam: v.text,
                                            paginator: null);
                                  } else {
                                    return context
                                        .read<MyActivitiesCubit>()
                                        .getActivitiesUser(searchParam: null);
                                  }
                                }),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 46,
                            child: DropdownButtonFormField(
                                value: selectedActivityStatus,
                                padding: EdgeInsets.zero,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(6))),
                                hint: Text(
                                  "Select Status",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 12),
                                ),
                                items: _getStatusDropdownItems(),
                                onChanged: (val) {
                                  context
                                      .read<MyActivitiesCubit>()
                                      .getAgentActivities(
                                          userId: selectedUser?.id,
                                          status: val ?? "",
                                          dates: selectedDateTime != null
                                              ? [selectedDateTime!]
                                              : null,
                                          paginator: null);
                                }),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Text(
                          "Sort by:",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDateTime = null;
                            });
                          },
                          child: Text(
                            "Clear all",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Colors.indigo,
                                    decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedDateTime = DateTime.now();
                            context
                                .read<MyActivitiesCubit>()
                                .getAgentActivities(
                                    userId: selectedUser?.id,
                                    status: selectedActivityStatus ?? "",
                                    dates: selectedDateTime != null
                                        ? [selectedDateTime!]
                                        : null,
                                    paginator: null);
                          },
                          child: Text(
                            "Today",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Colors.indigo,
                                    decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(),
                  ),
                  Expanded(
                    child: HorizontalWeekCalendar(
                      minDate: DateTime.now().subtract(Duration(days: 30 * 5)),
                      maxDate: DateTime.now().add(Duration(minutes: 60)),
                      onDateChange: (date) {
                        selectedDateTime = date;
                        context.read<MyActivitiesCubit>().getAgentActivities(
                            userId: selectedUser?.id,
                            status: selectedActivityStatus ?? "",
                            dates: selectedDateTime != null
                                ? [selectedDateTime!]
                                : null,
                            paginator: null);
                      },
                      initialDate: DateTime.now(),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            BlocBuilder<MyActivitiesCubit, MyActivitiesState>(
              builder: (context, state) {
                if (state.paginator == null) {
                  // First load with  out pagination
                  switch (state.status) {
                    case AppStatus.success:
                      return showActivities(
                        context,
                        state.activities,
                        state.paginator,
                        state.status,
                      );
                    case AppStatus.failure:
                      return showError(context, 'Unexpected error happened');
                    case AppStatus.loading:
                      return const CircularProgressIndicator();
                    default:
                      return SizedBox();
                  }
                } else {
                  // For pagination show existing list

                  // Logger()
                  //     .d("Pagination info :: ${state.paginator?.currentPage}");
                  return showActivities(
                    context,
                    state.activities ?? [],
                    state.paginator,
                    state.status,
                  );
                }
              },
            )
          ],
        )),
      ),
    );
  }

  Widget showActivities(
    BuildContext context,
    List<Activity> activities,
    Paginator? paginator,
    AppStatus? appStatus,
  ) {
    Logger().d(
        "No of activitiess : ${activities.length} paginator length ${paginator?.currentPage}");

    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          bool isScrollEnd = scrollInfo.metrics.pixels >=
              0.9 * scrollInfo.metrics.maxScrollExtent;
          if (isScrollEnd && (paginator?.hasNextPage ?? false)) {
            Logger().d("Paginator is executing");
            context
                .read<MyActivitiesCubit>()
                .getAgentActivities(paginator: paginator);
          }
          return true;
        },
        child: RefreshIndicator.adaptive(
          onRefresh: () async {
            await loadData(context);
          },
          child: Visibility(
            visible: activities.length > 0,
            replacement: ListView(
              children: [
                Column(
                  children: [
                    Text("No data found"),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                )
              ],
            ),
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, pos) {
                  if (pos == activities.length &&
                      (paginator?.hasNextPage ?? false)) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: CircularProgressIndicator()),
                      ],
                    );
                  }
                  Activity activity = activities[pos];
                  return MyActivitiesItemWidget(activity: activity);
                },
                separatorBuilder: (_, __) => SizedBox(
                      height: 16,
                    ),
                itemCount: appStatus == AppStatus.loading &&
                        (paginator?.hasNextPage ?? false)
                    ? activities.length + 1
                    : activities.length),
          ),
        ),
      ),
    );
  }

  Widget showError(BuildContext context, String errorMessage) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error loading data, try again"),
        SizedBox(
          height: 8,
        ),
        AppPrimaryButton(
            text: "Retry",
            onTap: () {
              loadData(context);
            })
      ],
    );
  }

  loadData(
    BuildContext context,
  ) {
    context.read<MyActivitiesCubit>().getAgentActivities(paginator: null);
  }

  void onLeadSelected(value) {
    // TODO: Implemengt logic
  }

  void onStatusSelected(context, value) {
    // setState(() {
    //   selectedActivityStatus = value;
    // });
    context.read<MyActivitiesCubit>().getAgentActivities(
        userId: selectedUser?.id,
        status: value ?? "",
        dates: selectedDateTime != null ? [selectedDateTime!] : null,
        paginator: null);
  }

  List<DropdownMenuItem<String>> _getStatusDropdownItems() {
    List<DropdownMenuItem<String>> items = ["Pending", "Overdue", "Complete"]
        .map(
          (e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
                style: Theme.of(context).textTheme.bodySmall,
              )),
        )
        .toList();
    items.insert(
      0,
      DropdownMenuItem(
          value: "",
          child: Text(
            "All",
            style: Theme.of(context).textTheme.bodySmall,
          )),
    );
    return items;
  }
}
