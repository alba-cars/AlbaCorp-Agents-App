import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:recase/recase.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../util/color_category.dart';
import '../util/constant.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar(
      {super.key,
      required this.onChanged,
      this.filterFields,
      this.onFilterApplied,
      this.onResetFilter,
      this.filter});
  final void Function(String? val) onChanged;
  final List<Widget>? filterFields;
  final void Function(Map<String, dynamic>? filter)? onFilterApplied;
  final VoidCallback? onResetFilter;
  final Map<String, dynamic>? filter;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  late final FocusNode _focusNode = FocusNode();
  late final TextEditingController _controller = TextEditingController();
  late final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  Map<String, dynamic>? filter;
  List<Map<String, dynamic>> arrFilter = [];

  @override
  void didUpdateWidget(covariant AppSearchBar oldWidget) {
    if (widget.filter != null) {
      filter = Map.from(widget.filter!)
        ..removeWhere((key, value) => value == null);
      getFilter();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                  controller: _controller,
                  focusNode: _focusNode,
                  onChanged: (v) {
                    EasyDebounce.debounce('search-bar', Durations.long3, () {
                      widget.onChanged.call(v);
                    });
                  },
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      constraints: BoxConstraints.tightFor(height: 50),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: pacificBlue, width: 1.w),
                          borderRadius: BorderRadius.circular(12.h)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              width: 1.w),
                          borderRadius: BorderRadius.circular(12.h)),
                      filled: true,
                      fillColor: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.2),
                      hintText: 'Search...',
                      prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 8.w, right: 8.w),
                          child: Icon(Icons.search)),
                      suffixIcon: _focusNode.hasFocus
                          ? GestureDetector(
                              onTap: () {
                                _focusNode.unfocus();
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 8.h, right: 16.w, bottom: 8.h),
                                child: SizedBox(
                                    height: 24.h,
                                    width: 24.w,
                                    child: Icon(Icons.close)),
                              ),
                            )
                          : _controller.text.isNotEmpty
                              ? TextButton(
                                  onPressed: () {
                                    _controller.clear();
                                    widget.onChanged.call(null);
                                    setState(() {});
                                  },
                                  child: Text('clear'))
                              : null,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.h)))),
            ),
            HorizontalSmallGap(),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    // useRootNavigator: true,
                    isScrollControlled: true,
                    enableDrag: false,
                    builder: (context) => DraggableScrollableSheet(
                          maxChildSize: 0.85,
                          minChildSize: 0.85,
                          initialChildSize: 0.85,
                          expand: false,
                          builder: (context, scrollController) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: Scaffold(
                                body: Container(
                                  color: Colors.white,
                                  width: double.maxFinite,
                                  child: FormBuilder(
                                      key: _formKey,
                                      initialValue: filter ?? {},
                                      child: Column(
                                        children: [
                                          VerticalSmallGap(),
                                          if (widget.filterFields != null)
                                            Expanded(
                                                child: ScrollShadow(
                                              size: 10,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer
                                                  .withOpacity(0.5),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: SingleChildScrollView(
                                                  controller: scrollController,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children:
                                                        widget.filterFields!,
                                                  ),
                                                ),
                                              ),
                                            )),
                                          VerticalSmallGap(),
                                          AppPrimaryButton(
                                              text: 'Filter',
                                              onTap: () {
                                                _formKey.currentState?.save();
                                                final val = _formKey
                                                    .currentState?.value;
                                                if (val != null) {
                                                  widget.onFilterApplied
                                                      ?.call(val);
                                                  Navigator.of(context).pop();
                                                }
                                              }),
                                          VerticalSmallGap(
                                            adjustment: 2,
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            );
                          },
                        ));
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      width: 1.w),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: SvgPicture.asset(
                        "${Constant.assetImagePath}filter.svg",
                        height: 24.h,
                        width: 24.w,
                      )),
                ),
              ),
            ),
          ],
        ),
        if (filter != null)
          SizedBox(
            height: 42,
            child: ListView.separated(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final ifilter = arrFilter[index];
                  final key = ifilter.keys.elementAt(0);
                  final value = ifilter.values.elementAt(0);
                  return Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                SmallText(text: "${key.titleCase}"),
                                Text(" : ${getFilterValue(value)}"),
                              ],
                            ),
                          ),
                          IconButton(
                            visualDensity: VisualDensity.compact,
                            onPressed: () {
                              if (filter?[key] is List) {
                                final val = filter?[key] as List;
                                val.remove(value);
                                if (val.isEmpty) {
                                  filter?.remove(key);
                                } else {
                                  filter?[key] = val;
                                }
                              } else {
                                filter?.remove(key);
                              }
                              if (filter?.isEmpty == true) {
                                filter = null;

                                widget.onFilterApplied?.call(null);
                              } else {
                                widget.onFilterApplied?.call(filter);
                              }
                              arrFilter.removeAt(index);
                              setState(() {});
                            },
                            icon: Icon(Icons.close),
                            padding: EdgeInsets.zero,
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => HorizontalSmallGap(),
                itemCount: arrFilter.length),
          ),
      ],
    );
  }

  String getFilterValue(dynamic value) {
    if (value is String) {
      return value;
    } else if (value is Map) {
      if (value.containsKey('label')) {
        return value['label'] ?? '';
      }
    } else if (value is SfRangeValues) {
      return '${(value.start as num).currency} - ${(value.end as num).currency}';
    } else if (value is DateTime) {
      return '${DateFormat.yMd().format(value)}';
    }
    return value.toString();
  }

  List<Map<String, dynamic>> getFilter() {
    arrFilter.clear();
    filter!.entries.forEach((element) {
      if (element.value is List) {
        final list = (element.value as List);
        arrFilter.addAll(list.map((e) => {element.key: e}));
      } else {
        arrFilter.add({element.key: element.value});
      }
    });
    return arrFilter;
  }
}
