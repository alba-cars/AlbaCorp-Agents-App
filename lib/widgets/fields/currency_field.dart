import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/widgets/fields/error_text.dart';

import '../input_field_formatter.dart/currency_formatter.dart';
import 'field_color.dart';

class CurrencyField extends StatefulWidget {
  const CurrencyField(
      {super.key,
      required this.name,
      this.isRequired = false,
      this.minimumPrice,
      this.disabled = false,
      this.validator,
      this.value,
      this.label,
      this.onChanged});

  final String name;
  final bool isRequired;
  final double? minimumPrice;
  final String? label;
  final bool disabled;
  final double? value;
  final String? Function(num?)? validator;
  final void Function(num?)? onChanged;

  @override
  State<CurrencyField> createState() => _CurrencyFieldState();
}

class _CurrencyFieldState extends State<CurrencyField> {
  final GlobalKey<FormBuilderFieldState> _fieldKey = GlobalKey();
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.value != null) {
        _fieldKey.currentState?.didChange(widget.value);
        final val =
            CurrencyTextInputFormatter().formatDouble(widget.value!.toDouble());
        _controller.text = val;
      }
      if (_fieldKey.currentState?.value != null) {
        _controller.text = CurrencyTextInputFormatter()
            .formatDouble(_fieldKey.currentState!.value);
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CurrencyField oldWidget) {
    if (widget.value != oldWidget.value && widget.value != null) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        _fieldKey.currentState?.didChange(widget.value);
        final val =
            CurrencyTextInputFormatter().formatDouble(widget.value!.toDouble());
        _controller.text = val;

        Logger().d(val);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<num>(
        key: _fieldKey,
        validator: widget.validator ??
            (val) {
              if (val == null && widget.isRequired == false) {
                return null;
              } else if (val == null && widget.isRequired) {
                return "Please enter a value";
              } else if (widget.minimumPrice != null &&
                  widget.minimumPrice! > (val ?? 0)) {
                return "Amount should be greater than ${widget.minimumPrice}";
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
                enabled: !widget.disabled,
                controller: _controller,
                keyboardType: TextInputType.number,
                inputFormatters: [CurrencyTextInputFormatter()],
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.start,
                onChanged: (val) {
                  final amount = num.tryParse(val.replaceAll(',', ''));

                  state.didChange(amount);
                  widget.onChanged?.call(amount);
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'AED',
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
