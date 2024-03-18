import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:intl/intl.dart';

import 'field_color.dart';

class DateField extends StatefulWidget {
  const DateField({
    super.key,
    required this.name,
    required this.firstDate,
    this.initialDate,
    required this.lastDate,
    this.label,
    this.isRequired = false,
    this.hint,
  });

  final String name;
  final String? label;
  final String? hint;
  final bool isRequired;
  final DateTime firstDate;
  final DateTime? initialDate;
  final DateTime lastDate;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  final String _text = '';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return FormBuilderField<DateTime>(
        name: widget.name,
        builder: (state) {
          return Column(
            children: [
              if (widget.label != null)
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.label! + (widget.isRequired ? ' *' : ''),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF555555),
                            ),
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 6),
              InkWell(
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate:
                          state.value ?? widget.initialDate ?? DateTime.now(),
                      firstDate: widget.firstDate,
                      lastDate: widget.lastDate,
                    );
                    state.didChange(date);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: fieldColor,
                      border: state.hasError
                          ? Border.all(color: colorScheme.error, width: 2)
                          : Border.all(color: borderColor, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Row(children: [
                      Expanded(
                          child: SizedBox(
                        height: 48,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child:
                                    (widget.hint != null && state.value == null)
                                        ? Text(
                                            widget.hint!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                ),
                                          )
                                        : Text(
                                            state.value == null
                                                ? ''
                                                : DateFormat.yMMMMd()
                                                    .format(state.value!),
                                          ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                              child: Center(child: Icon(Icons.calendar_month)),
                            ),
                          ],
                        ),
                      ))
                    ]),
                  )),
              if (state.hasError == true)
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                  ),
                  child: Text(
                    state.errorText ?? "",
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(
                height: 6,
              )
            ],
          );
        });
  }
}
