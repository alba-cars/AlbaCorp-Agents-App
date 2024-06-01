import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'error_text.dart';
import 'field_color.dart';

typedef DisplayOptionString<T extends Object> = String Function(T option);

class MultiDropDownField<T extends Object> extends StatefulWidget {
  const MultiDropDownField({
    Key? key,
    required this.label,
    this.hint,
    this.isRequired = false,
    this.isLoadingItems = false,
    required this.items,
    this.initialValue,
    DisplayOptionString<T>? displayOption,
    dynamic Function(T?)? selectValue,
    this.onSelected,
    this.isVerified = false,
    required this.name,
    this.validator,
    this.valueTransformer,
  })  : _displayOption = displayOption ?? _defaultDisplayOption,
        _selectValue = selectValue,
        super(key: key);
  final String name;
  final String? hint;
  final String? label;
  final bool isRequired;
  final T? initialValue;
  final bool isVerified;
  final bool isLoadingItems;
  final List<T> items;
  final DisplayOptionString<T> _displayOption;
  final dynamic Function(T?)? _selectValue;
  final Function(List<T> option)? onSelected;
  final String? Function(T? val)? validator;
  final dynamic Function(List<T>?)? valueTransformer;

  static String _defaultDisplayOption(val) => val.toString();

  @override
  State<MultiDropDownField<T>> createState() => _MultiDropDownFieldState<T>();
}

class _MultiDropDownFieldState<T extends Object>
    extends State<MultiDropDownField<T>> with SingleTickerProviderStateMixin {
  late String _text = '';
  OverlayEntry? _entry;
  late final _fieldKey = GlobalKey<FormBuilderFieldState>();
  late final LayerLink _layerLink = LayerLink();
  late AnimationController _animationController;
  late Animation<double> _animation;
  late bool isLoading;
  late OverlayState? overlay = Overlay.of(context);
  late final FocusScopeNode _focusNode = FocusScopeNode();
  late final ScrollController _scrollController = ScrollController();
  List<T> _items = [];

  @override
  void initState() {
    super.initState();
    _items = List.of(widget.items);
    isLoading = widget.isLoadingItems;
    _text = widget.initialValue != null
        ? widget._displayOption(widget.initialValue!)
        : '';
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _animation =
        CurvedAnimation(curve: Curves.easeIn, parent: _animationController);
    _focusNode.addListener(_onFocusChanged);
  }

  _onFocusChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    _entry?.remove();
    _entry?.dispose();
    _scrollController.dispose();
    _focusNode.removeListener(_onFocusChanged);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant MultiDropDownField<T> oldWidget) {
    if (oldWidget.initialValue != widget.initialValue) {
      _text = widget.initialValue != null
          ? widget._displayOption(widget.initialValue!)
          : '';
      setState(() {});
    }
    if (oldWidget.isLoadingItems != widget.isLoadingItems) {
      if (overlay != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          overlay!.setState(() {
            isLoading = widget.isLoadingItems;
          });
        });
      }
    }

    if (!const ListEquality().equals(widget.items, _items)) {
      _items = List.of(widget.items);
      if (_text != widget.initialValue) _text = '';
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<List<T>>(
      key: _fieldKey,
      name: widget.name,
      valueTransformer: widget.valueTransformer,
      builder: (state) {
        return FocusScope(
          onFocusChange: (value) => {
            if (value) {} else {hideOverlay()}
          },
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
                      if (widget.isVerified == true)
                        const Icon(
                          Icons.verified_rounded,
                          color: Colors.green,
                          size: 15,
                        ),
                    ],
                  ),
                if (widget.label != null) const SizedBox(height: 4),
                if (state.value != null)
                  Wrap(
                      runSpacing: 6,
                      spacing: 6,
                      children: (state.value! as List)
                          .map((e) => Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        end: 6, top: 6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 7,
                                                color: Colors.grey[200]!)
                                          ]),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 4),
                                      child: Text(
                                        widget._displayOption(e),
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
                                            ..removeWhere(
                                                (element) => element == e);

                                          state.didChange(
                                              value.isNotEmpty ? value : null);
                                        },
                                        child: CircleAvatar(
                                            maxRadius: 10,
                                            backgroundColor: Colors.black,
                                            foregroundColor: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            child: FittedBox(
                                                child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Icon(Icons.close),
                                            ))),
                                      ))
                                ],
                              ))
                          .toList()),
                const SizedBox(height: 6),
                CompositedTransformTarget(
                    link: _layerLink,
                    child: InkWell(
                      onTap: () {
                        if (_entry == null) {
                          showOverlay();
                        } else {
                          hideOverlay();
                        }
                      },
                      child: Container(
                        constraints: const BoxConstraints(minHeight: 42),
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
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            widget.hint ?? '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(color: Colors.grey),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 50,
                                      child: Center(
                                        child: IconButton(
                                          icon: AnimatedBuilder(
                                            builder: (context, child) {
                                              return RotationTransition(
                                                  turns: Tween(
                                                          begin: 0.0, end: 0.5)
                                                      .animate(
                                                          _animationController),
                                                  child: child);
                                            },
                                            animation: _animation,
                                            child: const Icon(
                                                Icons.keyboard_arrow_down),
                                          ),
                                          onPressed: () {
                                            if (_entry == null) {
                                              showOverlay();
                                            } else {
                                              hideOverlay();
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
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

  void showOverlay() {
    final overlayBox = context.findRenderObject() as RenderBox;
    final size = overlayBox.size;
    _animationController.forward();
    final position = overlayBox.localToGlobal(Offset.zero).dy;
    final height = MediaQuery.of(context).size.height;
    final followerAlignment =
        position + 300 < height ? Alignment.topLeft : Alignment.bottomLeft;
    final targetAlignment =
        position + 300 < height ? Alignment.bottomLeft : Alignment.topLeft;
    _entry = OverlayEntry(builder: (context) {
      return MediaQuery.removeViewInsets(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Positioned(
            width: size.width,
            child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                followerAnchor: followerAlignment,
                targetAnchor: targetAlignment,
                offset: position + 300 < height
                    ? const Offset(0, 12)
                    : const Offset(0, -12),
                child: overlayWidget())),
      );
    });
    overlay?.insert(_entry!);
    if (!_focusNode.hasFocus) {
      _focusNode.requestFocus();
    }
  }

  void hideOverlay() {
    _animationController.reverse();
    _entry?.remove();
    _entry = null;
    if (_focusNode.hasFocus) {
      _focusNode.unfocus();
    }
  }

  Widget overlayWidget() {
    final vals = _fieldKey.currentState?.value as List?;
    final items = List.from(widget.items)
      ..removeWhere((element) =>
          vals?.any((v) =>
              widget._displayOption(v) == widget._displayOption(element)) ??
          false);
    return Material(
        child: ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 4,
                color: Colors.grey[300]!,
              ),
            ],
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8)),
        // child: const Center(
        //   child: CircularProgressIndicator(),
        // ),
        child: (isLoading)
            ? showLoading(context)
            : MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Scrollbar(
                    thickness: 8,
                    radius: const Radius.circular(12),
                    controller: _scrollController,
                    thumbVisibility: true,
                    trackVisibility: true,
                    child: ListView.builder(
                        controller: _scrollController,
                        itemCount: items.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {
                              _text = '';
                              final item = items[index];
                              final val = _fieldKey.currentState?.value ?? [];
                              final List<T> value = [...val, item];
                              _fieldKey.currentState?.didChange(value);

                              setState(() {});
                              _animationController.reverse();

                              widget.onSelected?.call(value);
                              hideOverlay();
                            },
                            title: Text(widget._displayOption(items[index])),
                          );
                        }),
                  ),
                ),
              ),
      ),
    ));
  }

  Widget showLoading(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
