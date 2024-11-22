import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/widgets/raw_autocomplete.dart';
import 'package:real_estate_app/widgets/space.dart';

import 'autocomplete_field.dart';
import 'error_text.dart';
import 'field_color.dart';

class MultiSelectAutoCompleteField<T extends Object> extends StatefulWidget {
  const MultiSelectAutoCompleteField({
    Key? key,
    this.text,
    this.onSelected,
    this.label,
    this.placeHolder,
    this.onChanged,
    required this.name,
    this.hint,
    this.isRequired = false,
    this.valueTransformer,
    required this.optionsBuilder,
    String Function(T)? displayStringForOption,
    this.controller,
  })  : _displayStringForOption =
            displayStringForOption ?? _displayStringForOptions,
        super(key: key);
  final String name;
  final String? text;
  final void Function(T value)? onSelected;
  final String? label;
  final String? placeHolder;
  final String? hint;
  final Function(Map<String, List<dynamic>?> val)? onChanged;
  final bool isRequired;
  final dynamic Function(List<T>?)? valueTransformer;
  final FutureOr<Iterable<T>> Function(TextEditingValue, bool refresh)
      optionsBuilder;
  final String Function(T) _displayStringForOption;
  final AutoCompleteFieldController? controller;

  static String _displayStringForOptions<T>(T val) => val.toString();

  @override
  State<MultiSelectAutoCompleteField<T>> createState() =>
      _MultiSelectAutoCompleteFieldState<T>();
}

class _MultiSelectAutoCompleteFieldState<T extends Object>
    extends State<MultiSelectAutoCompleteField<T>>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _controller = TextEditingController();
  late final FocusNode _focusNode = FocusNode();
  late final _fieldKey = GlobalKey<FormFieldState<String>>();
  late final GlobalKey _listKey = GlobalKey();
  late final ScrollController _scrollController = ScrollController();
  AnimationController? _animationController;
  Tween<double> animation = Tween(begin: 0, end: 1);

  @override
  void didUpdateWidget(covariant MultiSelectAutoCompleteField<T> oldWidget) {
    if (widget.text != oldWidget.text) {
      _controller.text = widget.text ?? "";
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _focusNode.addListener(focusListener);
    super.initState();
  }

  focusListener() {
    if (_focusNode.hasFocus) {
      _animationController?.forward();
    } else {
      _animationController?.reverse();
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();
    _focusNode.dispose();
    _scrollController.dispose();

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<List<T>>(
      key: _fieldKey,
      name: widget.name,
      valueTransformer: widget.valueTransformer,
      validator: (value) {
        if (value?.isEmpty == true && widget.isRequired) {
          return 'Please select a value from options';
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
                    widget.label!,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF555555),
                        ),
                  ),
                ),
              ],
            ),
          if (widget.label != null) const SizedBox(height: 4),
          Wrap(
            runSpacing: 6,
            spacing: 6,
            children: (state.value ?? [])
                .map((e) => Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.only(end: 6, top: 6),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7, color: Colors.grey[200]!)
                                ]),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Text(
                              widget._displayStringForOption(e),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        Positioned.directional(
                            end: 0,
                            top: 0,
                            textDirection: Directionality.of(context),
                            child: InkWell(
                              onTap: () {
                                final value = state.value!
                                  ..removeWhere((element) => element == e);

                                state
                                    .didChange(value.isNotEmpty ? value : null);
                              },
                              child: CircleAvatar(
                                  maxRadius: 10,
                                  backgroundColor: Colors.black,
                                  foregroundColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  child: FittedBox(
                                      child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(Icons.close),
                                  ))),
                            ))
                      ],
                    ))
                .toList(),
          ),
          const SizedBox(height: 6),
          LayoutBuilder(builder: (context, constrains) {
            return AppRawAutocomplete<T>(
              textEditingController: _controller,
              focusNode: _focusNode,
              displayStringForOption: widget._displayStringForOption,
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted, val) {
                return TextFormField(
                  focusNode: _focusNode,
                  controller: textEditingController,
                  textAlignVertical: TextAlignVertical.center,
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
                    suffixIcon: SizedBox(
                      width: 50,
                      child: Center(
                        child: IconButton(
                          icon: AnimatedBuilder(
                            builder: (context, child) {
                              return RotationTransition(
                                  turns: Tween(begin: 0.0, end: 0.5)
                                      .animate(_animationController!),
                                  child: child);
                            },
                            animation: _focusNode,
                            child: const Icon(Icons.keyboard_arrow_down),
                          ),
                          onPressed: () {
                            if (_focusNode.hasFocus) {
                              _focusNode.unfocus();
                            } else {
                              _focusNode.requestFocus();
                            }
                          },
                        ),
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 12.0),
                  ),
                );
              },
              optionsViewBuilder:
                  (context, onSelected, _options, loading, loadMore) {
                final filteredOptions = _options.whereNot(
                  (element1) =>
                      state.value?.any((element2) {
                        if (element1 is Map) {
                          return (element1 as Map)['label'] ==
                              (element2 as Map)['label'];
                        }
                        return element1 == element2;
                      }) ==
                      true,
                );

                return OptionsListWidget(
                  key: ValueKey("multi au"),
                  scrollController: _scrollController,
                  filteredOptions: filteredOptions,
                  displayStringForOption: widget._displayStringForOption,
                  onSelected: onSelected,
                  loadMore: loadMore,
                  loading: loading,
                  constrains: constrains,
                  listKey: _listKey,
                );
              },
              onSelected: (v) {
                _controller.text = '';
                final val = state.value ?? [];
                if (v != null) {
                  state.didChange([...val, v]);
                } else {
                  final val = List<T>.from(state.value ?? [])
                    ..removeWhere((element) => element == v);
                  state.didChange(val);
                }
                _focusNode.unfocus();
              },
              optionsBuilder:(v,refresh){ 
                if(refresh){
                  if(_scrollController.hasClients){
                  _scrollController.jumpTo(0);
                  }
                }
                return widget.optionsBuilder(v,refresh);},
            );
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
}

class OptionsListWidget<T> extends StatefulWidget {
  const OptionsListWidget({
    super.key,
    required ScrollController scrollController,
    required this.filteredOptions,
    required this.constrains,
    required this.loadMore,
    required this.loading,
    required this.onSelected,
    required this.displayStringForOption, required this.listKey,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final Iterable filteredOptions;
  final BoxConstraints constrains;
  final VoidCallback loadMore;
  final bool loading;
  final void Function(T) onSelected;
  final String Function(T) displayStringForOption;
  final GlobalKey listKey;

  @override
  State<OptionsListWidget<T>> createState() => _OptionsListWidgetState<T>();
}

class _OptionsListWidgetState<T> extends State<OptionsListWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return Align(
      
      alignment: Alignment.topLeft,
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.hardEdge,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: 200, maxWidth: widget.constrains.maxWidth),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              bool isScrollEnd = scrollInfo.metrics.pixels >=
                  0.9 * scrollInfo.metrics.maxScrollExtent;
              if (isScrollEnd) {
                widget.loadMore();
              }
              return true;
            },
            child: ListView.builder(
              key: widget.listKey,
              controller: widget._scrollController,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount:
                  widget.loading ? widget.filteredOptions.length + 1 : widget.filteredOptions.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == widget.filteredOptions.length && widget.loading) {
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
                if (widget.filteredOptions.isEmpty && !widget.loading) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('No Options'),
                  );
                }
                final T option = widget.filteredOptions.elementAt(index);
                return InkWell(
                  onTap: () {
                    widget.onSelected(option);
                  },
                  child: Builder(builder: (BuildContext context) {
                    final bool highlight =
                        AutocompleteHighlightedOption.of(context) == index;
                    if (highlight) {
                      SchedulerBinding.instance
                          .addPostFrameCallback((Duration timeStamp) {
                            if(mounted)
                        Scrollable.ensureVisible(context, alignment: 0.5);
                      });
                    }
                    return Container(
                      color: highlight ? Theme.of(context).focusColor : null,
                      padding: const EdgeInsets.all(16.0),
                      child: Text(widget.displayStringForOption(option)),
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
