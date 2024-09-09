import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class RangeSliderField extends FormBuilderFieldDecoration<SfRangeValues> {
  final ValueChanged<SfRangeValues>? onChangeStart;
  final ValueChanged<SfRangeValues>? onChangeEnd;
  final String? label;
  final double min;
  final double max;
  final int? divisions;
  final RangeLabels? labels;
  final Color? activeColor;
  final Color? inactiveColor;
  final Widget Function(String min)? minValueWidget;
  final Widget Function(String value)? valueWidget;
  final Widget Function(String max)? maxValueWidget;
  final NumberFormat? numberFormat;
  final DisplayValues displayValues;

  RangeSliderField({
    super.key,
    required super.name,
    this.label,
    super.validator,
    super.initialValue,
    super.decoration,
    super.onChanged,
    super.valueTransformer,
    super.focusNode,
    required this.min,
    required this.max,
    this.divisions,
    this.activeColor,
    this.inactiveColor,
    this.onChangeStart,
    this.onChangeEnd,
    this.labels,
    this.displayValues = DisplayValues.all,
    this.minValueWidget,
    this.valueWidget,
    this.maxValueWidget,
    this.numberFormat,
  }) : super(builder: (FormFieldState<SfRangeValues?> field) {
          final state = field as _RangeSliderFieldState;
          final effectiveNumberFormat = numberFormat ?? NumberFormat.compact();
          if (state.value == null) {
            field.setValue(SfRangeValues(min, max));
          }
          return InputDecorator(
            decoration: InputDecoration(border: InputBorder.none),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (label != null)
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          label,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF555555),
                          ),
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 6),
                SfRangeSlider(
                  values: field.value!,
                  min: min,
                  max: max,
                  activeColor: activeColor,
                  inactiveColor: inactiveColor,
                  onChangeEnd: (values) {
                    field.didChange(values);
                  },
                  onChangeStart: (values) {
                    field.didChange(values);
                  },
                  onChanged: (values) {
                    field.didChange(values);
                  },
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: <Widget>[
                      if (displayValues != DisplayValues.none &&
                          displayValues != DisplayValues.current)
                        minValueWidget
                                ?.call(effectiveNumberFormat.format(min)) ??
                            Text(effectiveNumberFormat.format(min)),
                      const Spacer(),
                      if (displayValues != DisplayValues.none &&
                          displayValues != DisplayValues.minMax)
                        valueWidget?.call(
                                '${effectiveNumberFormat.format(field.value!.start)} - ${effectiveNumberFormat.format(field.value!.end)}') ??
                            Text(
                                '${effectiveNumberFormat.format(field.value!.start)} - ${effectiveNumberFormat.format(field.value!.end)}'),
                      const Spacer(),
                      if (displayValues != DisplayValues.none &&
                          displayValues != DisplayValues.current)
                        maxValueWidget
                                ?.call(effectiveNumberFormat.format(max)) ??
                            Text(effectiveNumberFormat.format(max)),
                    ],
                  ),
                ),
              ],
            ),
          );
        });

  @override
  FormBuilderFieldDecorationState<RangeSliderField, SfRangeValues>
      createState() => _RangeSliderFieldState();
}

class _RangeSliderFieldState
    extends FormBuilderFieldDecorationState<RangeSliderField, SfRangeValues> {}

class RangeInputField extends FormBuilderField<SfRangeValues> {
  final String? label;
  final double min;
  final double max;
  final String? validationMessage;

  RangeInputField({
    super.key,
    required super.name,
    this.label,
    super.validator,
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.focusNode,
    required this.min,
    required this.max,
    this.validationMessage,
  }) : super(
          builder: (FormFieldState<SfRangeValues?> field) {
            final state = field as _RangeInputFieldState;

            return InputDecorator(
              decoration: InputDecoration(
                border: InputBorder.none,
                errorText: field.errorText,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (label != null)
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            label!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555),
                            ),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: state.fromController,
                          decoration: const InputDecoration(labelText: "From"),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            state.updateRangeValues();
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          controller: state.toController,
                          decoration: const InputDecoration(labelText: "To"),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            state.updateRangeValues();
                          },
                        ),
                      ),
                    ],
                  ),
                  if (field.hasError)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        validationMessage ?? 'Invalid range values',
                        style: const TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                ],
              ),
            );
          },
        );

  @override
  _RangeInputFieldState createState() => _RangeInputFieldState();
}

class _RangeInputFieldState
    extends FormBuilderFieldState<RangeInputField, SfRangeValues> {
  late TextEditingController fromController;
  late TextEditingController toController;

  @override
  void initState() {
    super.initState();
    fromController = TextEditingController(
      text: formatNumber(value?.start),
    );
    toController = TextEditingController(
      text: formatNumber(value?.end),
    );
  }

  String? formatNumber(num? value) {
    if (value == null) return null;
    return value % 1 == 0 ? value.toInt().toString() : value.toString();
  }

  void updateRangeValues() {
    final fromValue = double.tryParse(fromController.text);
    final toValue = double.tryParse(toController.text);

    final newValue = SfRangeValues(
      fromValue ?? widget.min,
      toValue ?? widget.max,
    );

    didChange(newValue);
  }

  @override
  void didChange(SfRangeValues? newValue) {
    super.didChange(newValue);
    // We don't update the controllers here to allow free editing
  }

  @override
  void dispose() {
    fromController.dispose();
    toController.dispose();
    super.dispose();
  }
}
