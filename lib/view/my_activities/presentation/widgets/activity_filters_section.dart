// lib/features/activities/presentation/widgets/activity_filters_section.dart

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/view/my_activities/cubit/my_activities_cubit.dart';
import 'package:table_calendar/table_calendar.dart';
import 'custom_card.dart';

class ActivityFiltersSection extends StatefulWidget {
  const ActivityFiltersSection({Key? key}) : super(key: key);

  @override
  State<ActivityFiltersSection> createState() => _ActivityFiltersSectionState();
}

class _ActivityFiltersSectionState extends State<ActivityFiltersSection> {
  String? selectedStatus;
  String? selectedClient;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.week;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: _buildFilters(),
    );
  }

  Widget _buildFilters() {
    final state = context.watch<MyActivitiesCubit>().state;
    return Column(
      children: [
        _buildCalendar(state),
        Row(
          children: [
            Expanded(
              child: _buildTypeDropdown(state),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatusDropdown(state),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTypeDropdown(MyActivitiesState state) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
        hintText: 'Type',
      ),
      value: state.activityType ?? 'All',
      items: ["All", 'CheckIn', 'Call', 'Whatsapp', 'Assign','Viewing']
          .map((status) => DropdownMenuItem(
                value: status,
                child: Text(status),
              ))
          .toList(), // Add your client items here
      onChanged: (value) {
        context.read<MyActivitiesCubit>().updateSearchParams(
            selectedType: value == "All" ? null : value,
            startDate: state.startDate,
            endDate: state.endDate,
            selectedStatus:state.activityStatus);
      },
    );
  }

  Widget _buildStatusDropdown(MyActivitiesState state) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
        hintText: 'Status',
      ),
      value: state.activityStatus ?? 'All',
      items: ['All', 'Pending', 'Overdue', 'Complete']
          .map((status) => DropdownMenuItem(
                value: status,
                child: Text(status),
              ))
          .toList(),
      onChanged: (value) {
        context.read<MyActivitiesCubit>().updateSearchParams(
            selectedType: state.activityType,
            startDate: state.startDate,
            endDate: state.endDate,
            selectedStatus: value == 'All' ? null : value);
      },
    );
  }

  Widget _buildCalendar(MyActivitiesState state) {
    return TableCalendar(
      firstDay: DateTime.now().subtract(const Duration(days: 365)),
      lastDay: DateTime.now().add(const Duration(days: 30)),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      calendarFormat: _calendarFormat,
      rangeStartDay: state.startDate,
      rangeEndDay: state.endDate,
      startingDayOfWeek: StartingDayOfWeek.monday,
      rangeSelectionMode: RangeSelectionMode.toggledOn,
      calendarStyle: CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
      ),
      onRangeSelected: (start, end, focusedDay) {
        context.read<MyActivitiesCubit>().updateSearchParams(
            selectedType: state.activityType,
            startDate: start,
            endDate: end,
            selectedStatus: state.activityStatus);
      },
      onDaySelected: (selectedDay, focusedDay) {
        _focusedDay = focusedDay;
        _selectedDay = selectedDay;
        setState(() {});
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
    );
  }

  void _clearFilters() {
    setState(() {
      selectedStatus = null;
      selectedClient = null;
    });
  }
}
