import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logger/logger.dart';

import 'package:real_estate_app/widgets/fields/error_text.dart';

import '../input_field_formatter.dart/currency_formatter.dart';
import 'field_color.dart';

class NumberField extends StatefulWidget {
  const NumberField(
      {super.key,
      required this.name,
      this.label,
      this.placeHolder,
      this.isRequired = false,
      this.unit,
      this.convertToString = false,
      this.onChanged,
      this.value});

  final String name;
  final String? label;
  final String? placeHolder;
  final bool isRequired;
  final String? unit;
  final num? value;
  final bool convertToString;
  final void Function(num? value)? onChanged;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  final GlobalKey<FormBuilderFieldState> _fieldKey = GlobalKey();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.value != null) {
        _fieldKey.currentState?.didChange(widget.value);
        final val = widget.value?.toString() ?? '';
        _controller.text = val;
      }
      if (_fieldKey.currentState?.value != null) {
        _controller.text = _fieldKey.currentState?.value?.toString() ?? '';
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant NumberField oldWidget) {
    super.didUpdateWidget(oldWidget);
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.value != oldWidget.value) {
        if (widget.value != _fieldKey.currentState?.value) {
          _fieldKey.currentState?.didChange(widget.value);
          final val = CurrencyTextInputFormatter()
              .formatDouble(widget.value?.toDouble());
          Logger().d(val);
          _controller.text = val;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
        key: _fieldKey,
        validator: (val) {
          if (val == null && widget.isRequired == true) {
            return "This field is required";
          }
          return null;
        },
        name: widget.name,
        builder: (state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.label != null)
                Row(children: [
                  Expanded(
                    child: Text(
                      widget.label! + (widget.isRequired ? ' *' : ''),
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF555555),
                          ),
                    ),
                  ),
                ]),
              if (widget.label != null) const SizedBox(height: 6),
              TextFormField(
                controller: _controller,
                keyboardType: TextInputType.number,
                inputFormatters: [CurrencyTextInputFormatter()],
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.start,
                onChanged: (val) {
                  final v = num.tryParse(val.replaceAll(',', ''));
                  if (!widget.convertToString) {
                    state.didChange(v);
                  } else {
                    state.didChange(val.replaceAll(',', ''));
                  }
                  widget.onChanged?.call(v);
                },
                decoration: InputDecoration(
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
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      width: 48,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          widget.unit?.toUpperCase() ?? 'KM',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
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
              if (widget.label != null)
                const SizedBox(
                  height: 6,
                )
            ],
          );
        });
  }
}
