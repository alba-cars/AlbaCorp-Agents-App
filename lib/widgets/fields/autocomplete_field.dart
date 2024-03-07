import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../raw_autocomplete.dart';
import 'error_text.dart';
import 'field_color.dart';

class AppAutoComplete<T extends Object> extends StatefulWidget {
  const AppAutoComplete({
    Key? key,
    this.onSelected,
    this.label,
    this.placeHolder,
    required this.name,
    this.hint,
    required this.isRequired,
    required this.optionsBuilder,
    String Function(T)? displayStringForOption,
    this.valueTransformer,
    this.controller,
    this.actionButton,
    this.disabled = false,
  })  : _displayStringForOption =
            displayStringForOption ?? _displayStringForOptions,
        super(key: key);
  final String name;
  final void Function(T value)? onSelected;
  final String? label;
  final String? placeHolder;
  final String? hint;
  final dynamic Function(T?)? valueTransformer;
  final bool isRequired;
  final FutureOr<Iterable<T>> Function(TextEditingValue) optionsBuilder;
  final String Function(T) _displayStringForOption;
  final AutoCompleteFieldController? controller;
  final Widget? actionButton;
  final bool disabled;

  static String _displayStringForOptions<T>(T val) => val.toString();

  @override
  State<AppAutoComplete<T>> createState() => _AppAutoCompleteState<T>();
}

class _AppAutoCompleteState<T extends Object>
    extends State<AppAutoComplete<T>> {
  late final TextEditingController _controller = TextEditingController();
  late final FocusNode _focusNode = FocusNode();
  late final _fieldKey = GlobalKey<FormFieldState<T>>();

  @override
  void initState() {
    widget.controller?.reset = reset;
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      if (_fieldKey.currentState?.value != null) {
        _controller.text =
            widget._displayStringForOption(_fieldKey.currentState!.value!);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<T>(
      key: _fieldKey,
      name: widget.name,
      enabled: !widget.disabled,
      valueTransformer: widget.valueTransformer,
      validator: (value) {
        if (widget.isRequired && (value == null)) {
          return 'Please enter a value';
        }
        return null;
      },
      builder: (state) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                if (widget.actionButton != null) widget.actionButton!
              ],
            ),
          if (widget.label != null) const SizedBox(height: 6),
          LayoutBuilder(builder: (context, constrains) {
            return Stack(children: [
              AppRawAutocomplete<T>(
                  textEditingController: _controller,
                  focusNode: _focusNode,
                  displayStringForOption: widget._displayStringForOption,
                  fieldViewBuilder: (context, textEditingController, focusNode,
                      onFieldSubmitted) {
                    return TextFormField(
                      focusNode: _focusNode,
                      controller: textEditingController,
                      textAlignVertical: TextAlignVertical.center,
                      onEditingComplete: onFieldSubmitted,
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
                      ),
                    );
                  },
                  optionsViewBuilder: (context, onSelected, options) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(8),
                        clipBehavior: Clip.hardEdge,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight: 200, maxWidth: constrains.maxWidth),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: options.length,
                            itemBuilder: (BuildContext context, int index) {
                              final T option = options.elementAt(index);
                              return InkWell(
                                onTap: () {
                                  onSelected(option);
                                },
                                child: Builder(builder: (BuildContext context) {
                                  final bool highlight =
                                      AutocompleteHighlightedOption.of(
                                              context) ==
                                          index;
                                  if (highlight) {
                                    SchedulerBinding.instance
                                        .addPostFrameCallback(
                                            (Duration timeStamp) {
                                      Scrollable.ensureVisible(context,
                                          alignment: 0.5);
                                    });
                                  }
                                  return Container(
                                    color: highlight
                                        ? Theme.of(context).focusColor
                                        : null,
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                        widget._displayStringForOption(option)),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                  onSelected: (v) {
                    state.didChange(v);
                    widget.onSelected?.call(v);
                  },
                  optionsBuilder: widget.optionsBuilder),
              Positioned(
                right: 16,
                top: 12,
                child: GestureDetector(
                  onTap: () {
                    _focusNode.requestFocus();
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF555555),
                    size: 24,
                  ),
                ),
              ),
            ]);
          }),
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
      ),
    );
  }

  void reset() {
    _controller.text = '';
    if (mounted) setState(() {});
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _fieldKey.currentState?.didChange(null);
    });
  }
}

class AutoCompleteFieldController {
  VoidCallback reset = () {};
}
