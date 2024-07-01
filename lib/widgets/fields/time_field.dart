import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:intl/intl.dart';

import 'field_color.dart';

class TimeField extends StatefulWidget {
  const TimeField({
    super.key,
    required this.name,
    this.initialDate,
    this.label,
    this.isRequired = false,
    this.hint,
  });

  final String name;
  final String? label;
  final String? hint;
  final bool isRequired;
  final DateTime? initialDate;

  @override
  State<TimeField> createState() => _TimeFieldState();
}

class _TimeFieldState extends State<TimeField> {
  final String _text = '';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return FormBuilderField<TimeOfDay>(
        name: widget.name,
        validator: (val) {
          if (val == null && widget.isRequired == true) {
            return "This field is required";
          }
          return null;
        },
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
                    final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(DateTime.now()));
                    state.didChange(time);
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
                                                : state.value!.format(context),
                                          ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                              child: Center(child: Icon(CupertinoIcons.clock)),
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
