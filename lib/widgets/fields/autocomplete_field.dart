import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/widgets/space.dart';

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
    this.value,
    this.fontSize,
    this.initialValue,
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
  final FutureOr<Iterable<T>> Function(TextEditingValue, bool refresh)
      optionsBuilder;
  final String Function(T) _displayStringForOption;
  final AutoCompleteFieldController? controller;
  final Widget Function(GlobalKey<FormFieldState<T>> key)? actionButton;
  final bool disabled;
  final T? value;
  final T? initialValue;
  final double? fontSize;

  static String _displayStringForOptions<T>(T val) => val.toString();

  @override
  State<AppAutoComplete<T>> createState() => _AppAutoCompleteState<T>();
}

class _AppAutoCompleteState<T extends Object>
    extends State<AppAutoComplete<T>> {
  late final TextEditingController _controller = TextEditingController();
  late final FocusNode _focusNode = FocusNode();
  late final _fieldKey = GlobalKey<FormFieldState<T>>();
  late final _Key = GlobalKey();

  @override
  void initState() {
    if (widget.initialValue != null) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        _fieldKey.currentState?.didChange(widget.initialValue);
      });
    }
    if (widget.value != null) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        _fieldKey.currentState?.didChange(widget.value);
      });
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppAutoComplete<T> oldWidget) {
    if (widget.value != null) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        _fieldKey.currentState?.didChange(widget.value);
      });
    }
    super.didUpdateWidget(oldWidget);
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
                if (widget.actionButton != null)
                  widget.actionButton!.call(_fieldKey)
              ],
            ),
          if (widget.label != null) const SizedBox(height: 6),
          Stack(children: [
            AppRawAutocomplete<T>(
                controller: widget.controller,
                textEditingController: _controller,
                focusNode: _focusNode,
                
                initialValue: _fieldKey.currentState!.value,
                displayStringForOption: widget._displayStringForOption,
                fieldViewBuilder: (context, textEditingController, focusNode,
                    onFieldSubmitted, val) {
                  return TextFormField(
                    key: _Key,
                    focusNode: focusNode,
                    controller: textEditingController,
                    textAlignVertical: TextAlignVertical.center,
                    onEditingComplete: onFieldSubmitted,
                    enabled: !widget.disabled,
                    decoration: InputDecoration(
                      hintText: val,
                      hintStyle: TextStyle(
                        color: focusNode.hasFocus ? Colors.grey : Colors.black,
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
                          const EdgeInsets.fromLTRB(14.0, 6.0, 14.0, 6.0),
                    ),
                  );
                },
                optionsViewBuilder:
                    (context, onSelected, options, loading, loadMore) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.hardEdge,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight: 200,
                            maxWidth: (_Key.currentContext?.findRenderObject()
                                        as RenderBox?)
                                    ?.size
                                    .width ??
                                200),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: loading || options.isEmpty
                              ? options.length + 1
                              : options.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (index == options.length && loading) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Loading'),
                                    HorizontalSmallGap(),
                                    Center(
                                      child: SizedBox.square(
                                          dimension: 25,
                                          child: CircularProgressIndicator()),
                                    )
                                  ],
                                ),
                              );
                            }
                            if (options.isEmpty && !loading) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('No Options'),
                              );
                            }
                            final T option = options.elementAt(index);
                            return InkWell(
                              onTap: () {
                                onSelected(option);
                              },
                              child: Builder(builder: (BuildContext context) {
                                final bool highlight =
                                    AutocompleteHighlightedOption.of(context) ==
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
                                    widget._displayStringForOption(option),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            fontSize: widget.fontSize ?? 9),
                                  ),
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
                  if (v != null) {
                    widget.onSelected?.call(v);
                  }
                },
                optionsBuilder: widget.optionsBuilder),
            Positioned(
              right: 16,
              top: 12,
              child: GestureDetector(
                onTap: () {
                  _focusNode.requestFocus();
                },
                child: Container(
                  color: Colors.white10,
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF555555),
                    size: 24,
                  ),
                ),
              ),
            ),
          ]),
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
}

class AutoCompleteFieldController {
  VoidCallback reset = () {};
}
