import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/widgets/space.dart';

import 'attachment_field.dart';
import 'error_text.dart';
import 'field_color.dart';

class CardPickerDialogField<T extends Object> extends StatefulWidget {
  const CardPickerDialogField(
      {super.key,
      required this.name,
      this.hint,
      this.label,
      this.isRequired = false,
      this.initialValue,
      this.disabled = false,
      this.validator,
      this.valueTransformer,
      required this.optionBuilder,
      required this.optionsBuilder});

  final String name;
  final String? hint;
  final String? label;
  final bool isRequired;
  final T? initialValue;
  final bool disabled;
  final Future<Iterable<T>> Function(TextEditingValue) optionsBuilder;
  final String? Function(T? val)? validator;
  final dynamic Function(T?)? valueTransformer;
  final Widget Function(BuildContext context, T option) optionBuilder;

  @override
  State<CardPickerDialogField> createState() => _CardPickerDialogState<T>();
}

class _CardPickerDialogState<T extends Object>
    extends State<CardPickerDialogField<T>> {
  late final _fieldKey = GlobalKey<FormBuilderFieldState>();
  late final FocusScopeNode _focusNode = FocusScopeNode();
  @override
  Widget build(BuildContext context) {
    return FormBuilderField<T>(
      key: _fieldKey,
      name: widget.name,
      validator: (v) {
        if (widget.isRequired && v == null) {
          return 'This field is required';
        }
        return widget.validator?.call(v);
      },
      enabled: !widget.disabled,
      valueTransformer: widget.valueTransformer,
      // new change
      initialValue: widget.initialValue,
      builder: (state) {
        return FocusScope(
          onFocusChange: (value) => {},
          node: _focusNode,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.label != null)
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.label! + (widget.isRequired ? ' *' : ''),
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF555555),
                                  ),
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 6),
                InkWell(
                  onTap: () {
                    if (!widget.disabled) {
                      showCardDialog();
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: fieldColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: state.hasError
                              ? Theme.of(context).colorScheme.error
                              : _focusNode.hasPrimaryFocus
                                  ? Theme.of(context).colorScheme.primary
                                  : borderColor,
                          width: 1,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: ((state.value != null))
                                  ? widget.optionBuilder(context, state.value!)
                                  : Text(
                                      widget.hint ?? '',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (state.hasError == true)
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                    ),
                    child: ErrorText(
                      state.errorText ?? "",
                    ),
                  ),
                const SizedBox(
                  height: 6,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> showCardDialog() {
    final ValueNotifier<String> valueNotifier = ValueNotifier('');
    widget.optionsBuilder.call(TextEditingValue(text: ''));
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  VerticalSmallGap(),
                  TextFormField(
                    enabled: !widget.disabled,
                    textAlignVertical: TextAlignVertical.center,
                    onChanged: (val) {
                      EasyDebounce.debounce('sssssddddaa', Durations.medium4,
                          () {
                        valueNotifier.value = val;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Search..',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      filled: true,
                      fillColor: fieldColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: borderColor),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: borderColor),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          const EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 12.0),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 300),
                      child: ValueListenableBuilder(
                          valueListenable: valueNotifier,
                          builder: (context, textValue, _) {
                            return FutureBuilder(
                                future: widget.optionsBuilder
                                    .call(TextEditingValue(text: textValue)),
                                builder: (context, val) {
                                  return ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        final option =
                                            val.data!.elementAt(index);
                                        return InkWell(
                                          onTap: () {
                                            _fieldKey.currentState
                                                ?.didChange(option);
                                            Navigator.of(context).pop();
                                          },
                                          child: widget.optionBuilder(
                                              context, option),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                            height: 8,
                                          ),
                                      itemCount: val.data?.length ?? 0);
                                });
                          }),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
