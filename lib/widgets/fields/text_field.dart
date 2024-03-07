import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'error_text.dart';
import 'field_color.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.name,
    this.label,
    this.placeHolder,
    this.errorText,
    this.validator,
    this.textInputType,
    this.inputFormatters,
    this.suffix,
    this.controller,
    this.height,
    this.prefix,
    this.textAlign,
    this.focusNode,
    this.textStyle,
    this.showIcon,
    this.showLinkAbove,
    this.onFieldSubmitted,
    this.disabled = false,
    this.value,
    this.obscureText,
  });

  final String name;
  final String? label;
  final String? placeHolder;
  final String? errorText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String? val)? validator;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final double? height;
  final Widget? prefix;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final bool? showIcon;
  final String? showLinkAbove;
  final void Function()? onFieldSubmitted;
  final bool disabled;
  final String? value;
  final bool? obscureText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final FocusNode _focusNode = widget.focusNode ?? FocusNode();
  late final GlobalKey<FormBuilderFieldState> _fieldKey = GlobalKey();
  late final TextEditingController controller;

  @override
  void initState() {
    controller = widget.controller ?? TextEditingController();
    _focusNode.addListener(_onFocusChanged);
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      if (_fieldKey.currentState?.value != null) {
        controller.text = _fieldKey.currentState?.value ?? '';
      }
    });
    super.initState();
  }

  _onFocusChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AppTextField oldWidget) {
    if (oldWidget.value != widget.value) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        controller.text = widget.value ?? '';
        _fieldKey.currentState?.didChange(widget.value);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String>(
        key: _fieldKey,
        validator: widget.validator,
        name: widget.name,
        enabled: !widget.disabled,
        builder: (state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.label != null)
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.label!,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF555555),
                            ),
                      ),
                    ),
                    if (widget.showLinkAbove == 'phone')
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: const Text(
                              'or use ',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 0.7,
                                ),
                              ),
                            ),
                            child: const Text(
                              'Phone Number',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (widget.showLinkAbove == 'email')
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: const Text(
                              'or use ',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 0.7,
                                ),
                              ),
                            ),
                            child: const Text(
                              'Email Address',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              if (widget.label != null) const SizedBox(height: 6),
              TextFormField(
                enabled: !widget.disabled,
                focusNode: _focusNode,
                controller: controller,
                keyboardType: widget.textInputType,
                inputFormatters: widget.inputFormatters,
                textAlignVertical: TextAlignVertical.center,
                textAlign: widget.textAlign ?? TextAlign.start,
                style: widget.textStyle,
                onChanged: (val) {
                  state.didChange(val);
                },
                onEditingComplete: widget.onFieldSubmitted,
                obscureText: widget.obscureText ?? false,
                decoration: InputDecoration(
                  hintText: widget.placeHolder,
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
                  prefixIcon: widget.prefix,
                  suffixIcon: widget.suffix,
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
