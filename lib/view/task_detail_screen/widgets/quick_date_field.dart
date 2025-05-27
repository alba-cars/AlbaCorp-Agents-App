import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

/// Simple date option for selecting a date
class DateOption {
  final String label;
  final DateTime date;

  const DateOption({required this.label, required this.date});

  @override
  String toString() => label;
}

/// A date selection field with preset options using WrapSelectField-like styling
class DateOptionField extends StatefulWidget {
  final String name;
  final String label;
  final bool isRequired;
  final DateTime? initialValue;

  const DateOptionField({
    Key? key,
    required this.name,
    required this.label,
    this.isRequired = false,
    this.initialValue,
  }) : super(key: key);

  @override
  State<DateOptionField> createState() => _DateOptionFieldState();
}

class _DateOptionFieldState extends State<DateOptionField> {
  late final List<DateOption> _dateOptions;
  DateOption? _selectedOption;

  @override
  void initState() {
    super.initState();
    _initializeDateOptions();
    _setInitialSelection();
  }

  void _initializeDateOptions() {
    final now = DateTime.now();

    // Calculate dates for the options
    final laterToday = DateTime(
        now.year, now.month, now.day, (now.hour + 3).clamp(0, 23), now.minute);

    final tomorrow = DateTime(now.year, now.month, now.day + 1, 10, 0);

    final nextWeek = DateTime(now.year, now.month, now.day + 7, 10, 0);

    final custom = widget.initialValue ?? now;

    // Create date options
    _dateOptions = [
      DateOption(label: 'Later Today', date: laterToday),
      DateOption(label: 'Tomorrow', date: tomorrow),
      DateOption(label: 'Next Week', date: nextWeek),
      DateOption(label: 'Custom', date: custom),
    ];
  }

  void _setInitialSelection() {
    if (widget.initialValue != null) {
      // Try to find a matching preset
      final matchingOption = _dateOptions.where((option) {
        return option.date.day == widget.initialValue!.day &&
            option.date.month == widget.initialValue!.month &&
            option.date.year == widget.initialValue!.year;
      }).firstOrNull;

      if (matchingOption != null) {
        _selectedOption = matchingOption;
      } else {
        // If no preset matches, default to Custom
        _selectedOption = _dateOptions.last;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<DateTime>(
      name: widget.name,
      initialValue: widget.initialValue,
      validator: widget.isRequired
          ? (val) => val == null ? "Please select a date" : null
          : null,
      builder: (FormFieldState<DateTime> field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Field label
            if (widget.label.isNotEmpty)
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.label + (widget.isRequired ? ' *' : ''),
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF555555),
                          ),
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 6),

            // Date options in horizontal scroll
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _dateOptions.asMap().entries.map((entry) {
                  final index = entry.key;
                  final option = entry.value;
                  final length = _dateOptions.length;
                  final isSelected = _selectedOption == option;

                  return Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? 0 : 4,
                        right: index == length - 1 ? 0 : 4),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedOption = option;
                        });

                        if (option.label == 'Custom') {
                          _showDatePicker(context, field);
                        } else {
                          field.didChange(option.date);
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: isSelected
                              ? Theme.of(context).colorScheme.secondary
                              : null,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        child: Text(
                          option.label,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                color: isSelected
                                    ? Theme.of(context).colorScheme.onPrimary
                                    : null,
                              ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            if (field.value != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Selected Date: ${DateFormat.yMMMd().format(field.value!)}",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),

            // Error message if any
            if (field.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  field.errorText!,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),

            const SizedBox(height: 6),
          ],
        );
      },
    );
  }

  Future<void> _showDatePicker(
      BuildContext context, FormFieldState<DateTime> field) async {
    final initialDate = field.value ?? DateTime.now();

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30 * 6)), // 6 months
    );

    if (pickedDate != null) {
      // Update the 'Custom' option with the new date
      _dateOptions.last = DateOption(label: 'Custom', date: pickedDate);
      field.didChange(pickedDate);
    }
  }
}
