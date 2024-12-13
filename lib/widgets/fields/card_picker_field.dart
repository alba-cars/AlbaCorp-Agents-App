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
    final ValueNotifier<String> searchNotifier = ValueNotifier('');
    final ValueNotifier<int> pageNotifier = ValueNotifier(1);
    final ScrollController scrollController = ScrollController();

    // Track loading and has more data states
    final ValueNotifier<bool> isLoadingNotifier = ValueNotifier(false);
    final ValueNotifier<bool> hasMoreDataNotifier = ValueNotifier(true);

    // Store accumulated data
    final ValueNotifier<List<T>> accumulatedData = ValueNotifier([]);

    scrollController.addListener(() async {
            // Check if we're at the bottom and not currently loading
            if (scrollController.position.pixels >=
                    scrollController.position.maxScrollExtent - 50 &&
                !isLoadingNotifier.value &&
                hasMoreDataNotifier.value) {
              isLoadingNotifier.value = true;

              try {
                // Use the existing optionsBuilder with isRefresh parameter
                final data = await widget.optionsBuilder(
                    TextEditingValue(text: searchNotifier.value),
                    isRefresh: false // Indicate this is a pagination load
                    );

                if (data.isEmpty) {
                  // No more data to load
                  hasMoreDataNotifier.value = false;
                } else {
                  // Increment page and add new data
                  pageNotifier.value++;
                  accumulatedData.value = [...accumulatedData.value
                      ,...data];
                
                }
              } catch (e) {
                // Handle error
                print('Error loading more data: $e');
                hasMoreDataNotifier.value = false;
              } finally {
                isLoadingNotifier.value = false;
              }
            }
          });

          ()async{
              try {
                // Use the existing optionsBuilder with isRefresh parameter
                isLoadingNotifier.value = true;
                final data = await widget.optionsBuilder(
                    TextEditingValue(text: searchNotifier.value),
                    isRefresh: true // Indicate this is a pagination load
                    );

                  accumulatedData.value = [...accumulatedData.value
                      ,...data];
                     
                
              }
                finally{
                  isLoadingNotifier.value = false;
                }
          }();

        

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
                TextFormField(
                  onChanged: (val) {
                    EasyDebounce.debounce('search', Durations.medium4,
                        () async {
                      searchNotifier.value = val;
                      pageNotifier.value = 1;
                      accumulatedData.value.clear();
                      hasMoreDataNotifier.value = true;
                      final data = await widget.optionsBuilder(
                          TextEditingValue(text: val),
                          isRefresh: true);
                      accumulatedData.value = data.toList();
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
                    child: ValueListenableBuilder<List<T>>(
                      valueListenable: accumulatedData,
                      builder: (context, value, _) {
                        return ListView.separated(
                          controller: scrollController,
                          shrinkWrap: true,
                          itemCount: value.length +
                              (isLoadingNotifier.value ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index < value.length) {
                              final option = value[index];
                              return InkWell(
                                onTap: () {
                                  _fieldKey.currentState?.didChange(option);
                                  Navigator.of(context).pop();
                                },
                                child: widget.optionBuilder(context, option),
                              );
                            } else {
                              return Center(
                                  child: CircularProgressIndicator());
                            }
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 8),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
