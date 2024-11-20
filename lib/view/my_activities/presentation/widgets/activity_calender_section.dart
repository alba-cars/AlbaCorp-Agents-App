// lib/features/activities/presentation/widgets/activity_calendar_section.dart

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'custom_card.dart';


class ActivityCalendarSection extends StatefulWidget {
  const ActivityCalendarSection({Key? key}) : super(key: key);

  @override
  State<ActivityCalendarSection> createState() => _ActivityCalendarSectionState();
}

class _ActivityCalendarSectionState extends State<ActivityCalendarSection> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.week;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 16),
          
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(
          Icons.calendar_today_rounded,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 8),
        Text(
          'Schedule',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            setState(() {
              _selectedDay = DateTime.now();
              _focusedDay = DateTime.now();
            });
          },
          child: const Text('Today'),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _selectedDay = null;
            });
          },
          child: const Text('Clear'),
        ),
      ],
    );
  }

 
}