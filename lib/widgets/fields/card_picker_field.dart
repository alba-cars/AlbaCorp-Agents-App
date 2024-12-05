import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/widgets/space.dart';

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
  final Future<Iterable<T>> Function(TextEditingValue, {bool? isRefresh})
      optionsBuilder;
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
                    constraints: BoxConstraints(minHeight: 42),
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
    final ValueNotifier<int> pageNumber = ValueNotifier(1);
    final ScrollController scrollController = ScrollController();
    bool isLoading = false;

    // Store accumulated data
    final List<T> accumulatedData = [];

    // Initialize with first page
    widget.optionsBuilder.call(
      TextEditingValue(text: ''),
    );

    // Add scroll listener for pagination
    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          !isLoading) {
        // Load more data when reaching the bottom
        isLoading = true;
        pageNumber.value++;
        final data = await widget.optionsBuilder.call(
          TextEditingValue(text: ''),
        );
        accumulatedData.addAll(data);
        isLoading = false;
      }
    });

    return showGeneralDialog(
        barrierDismissible: true,
        barrierLabel: "card selector dialog",
        context: context,
        useRootNavigator: false,
        pageBuilder: (context, anim1, anim2) {
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
                        pageNumber.value = 1; // Reset page number on new search
                        accumulatedData
                            .clear(); // Clear accumulated data on new search
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
                            return ValueListenableBuilder(
                                valueListenable: pageNumber,
                                builder: (context, currentPage, _) {
                                  return FutureBuilder<Iterable<T>>(
                                      future: widget.optionsBuilder.call(
                                        TextEditingValue(text: textValue),
                                      ),
                                      builder: (context,
                                          AsyncSnapshot<Iterable<T>> val) {
                                        if (val.hasData) {
                                          isLoading = false;
                                          // Add new data to accumulated list
                                          if (currentPage == 1) {
                                            accumulatedData.clear();
                                          }
                                          accumulatedData.addAll(val.data!);
                                        }

                                        if (val.hasError) {
                                          return Center(
                                              child:
                                                  Text('Error loading data'));
                                        }

                                        return Column(
                                          children: [
                                            Expanded(
                                              child: ListView.separated(
                                                controller: scrollController,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  if (index <
                                                      accumulatedData.length) {
                                                    final option =
                                                        accumulatedData[index];
                                                    return InkWell(
                                                      onTap: () {
                                                        _fieldKey.currentState
                                                            ?.didChange(option);
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child:
                                                          widget.optionBuilder(
                                                              context, option),
                                                    );
                                                  } else {
                                                    return Center(
                                                        child:
                                                            CircularProgressIndicator());
                                                  }
                                                },
                                                separatorBuilder:
                                                    (context, index) =>
                                                        SizedBox(height: 8),
                                                itemCount: isLoading
                                                    ? accumulatedData.length + 1
                                                    : accumulatedData.length,
                                              ),
                                            ),
                                            if (isLoading)
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                          ],
                                        );
                                      });
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
