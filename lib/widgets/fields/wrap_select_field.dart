import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:real_estate_app/widgets/text.dart';

import 'error_text.dart';
import 'field_color.dart';

typedef DisplayOptionString<T extends Object> = String Function(T option);

class WrapSelectField<T extends Object> extends StatefulWidget {
  const WrapSelectField(
      {super.key,
      required this.name,
      this.label,
      required this.values,
      this.validator,
      this.defaultValue,
      this.valueTransformer,
      DisplayOptionString<T>? displayOption,
      required this.isRequired,
      this.description,
      this.onSelected,
      this.disabled = false})
      : _displayOption = displayOption ?? _displayStringForOptions;

  final String name;
  final String? label;
  final String? description;
  final List<T> values;
  final bool isRequired;
  final String? Function(T? val)? validator;
  final T? defaultValue;
  final dynamic Function(T?)? valueTransformer;
  final DisplayOptionString<T> _displayOption;
  final void Function(T? val)? onSelected;
  final bool disabled;

  static String _displayStringForOptions(val) => val.toString();

  @override
  State<WrapSelectField<T>> createState() => _WrapSelectFieldState<T>();
}

class _WrapSelectFieldState<T extends Object>
    extends State<WrapSelectField<T>> {
  late final _fieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  void didUpdateWidget(covariant WrapSelectField<T> oldWidget) {
    if (widget.defaultValue != oldWidget.defaultValue) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        _fieldKey.currentState?.didChange(widget.defaultValue);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<T>(
      key: _fieldKey,
      name: widget.name,
      valueTransformer: widget.valueTransformer,
      validator: (value) {
        if (widget.isRequired && (value == null)) {
          return 'Please enter a value';
        }
        return widget.validator?.call(value);
      },
      initialValue: widget.defaultValue,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            if (widget.description != null)
              Row(
                children: [
                  Expanded(
                    child: SmallText(text: widget.description!),
                  ),
                ],
              ),
            const SizedBox(height: 6),
            ScrollShadow(
              size: 16,
              color: Colors.blueGrey[100]!,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // d
                  // runSpacing: 8,
                  // spacing: 8,
                  children: widget.values.mapIndexed((i, e) {
                    final length = widget.values.length;
                    return Padding(
                      padding: EdgeInsets.only(
                          left: i == 0 ? 0 : 4, right: i == length - 1 ? 0 : 4),
                      child: InkWell(
                        onTap: widget.disabled
                            ? null
                            : () {
                                if (state.value == e) {
                                  state.didChange(null);
                                  widget.onSelected?.call(null);
                                } else {
                                  state.didChange(e);
                                  widget.onSelected?.call(e);
                                }
                              },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: state.value != null &&
                                        widget._displayOption(e) ==
                                            widget._displayOption(state.value!)
                                    ? Theme.of(context).colorScheme.secondary
                                    : null,
                                border: Border.all(
                                    color: widget.disabled
                                        ? Colors.grey
                                        : Theme.of(context)
                                            .colorScheme
                                            .secondary)),
                            child: Text(
                              widget._displayOption(e),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: state.value != null &&
                                              widget._displayOption(e) ==
                                                  widget._displayOption(
                                                      state.value!)
                                          ? Theme.of(context)
                                              .colorScheme
                                              .onPrimary
                                          : widget.disabled
                                              ? Colors.grey
                                              : null),
                            )),
                      ),
                    );
                  }).toList(),
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
        );
      },
    );
  }
}
