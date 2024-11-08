// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'fields/autocomplete_field.dart';

// Examples can assume:
// late BuildContext context;

/// The type of the [AppRawAutocomplete] callback which computes the list of
/// optional completions for the widget's field, based on the text the user has
/// entered so far.
///
/// See also:
///
///   * [AppRawAutocomplete.optionsBuilder], which is of this type.
typedef AutocompleteOptionsBuilder<T extends Object> = FutureOr<Iterable<T>>
    Function(TextEditingValue textEditingValue,bool refresh);

/// The type of the callback used by the [AppRawAutocomplete] widget to indicate
/// that the user has selected an option.
///
/// See also:
///
///   * [AppRawAutocomplete.onSelected], which is of this type.
typedef AutocompleteOnSelected<T extends Object> = void Function(T option);

/// The type of the [AppRawAutocomplete] callback which returns a [Widget] that
/// displays the specified [options] and calls [onSelected] if the user
/// selects an option.
///
/// The returned widget from this callback will be wrapped in an
/// [AutocompleteHighlightedOption] inherited widget. This will allow
/// this callback to determine which option is currently highlighted for
/// keyboard navigation.
///
/// See also:
///
///   * [AppRawAutocomplete.optionsViewBuilder], which is of this type.
typedef AutocompleteOptionsViewBuilder<T extends Object> = Widget Function(
    BuildContext context,
    AutocompleteOnSelected<T> onSelected,
    Iterable<T> options,
    bool loading,VoidCallback loadMore);

/// The type of the Autocomplete callback which returns the widget that
/// contains the input [TextField] or [TextFormField].
///
/// See also:
///
///   * [AppRawAutocomplete.fieldViewBuilder], which is of this type.
typedef AutocompleteFieldViewBuilder = Widget Function(
    BuildContext context,
    TextEditingController textEditingController,
    FocusNode focusNode,
    VoidCallback onFieldSubmitted,
    String text);

/// The type of the [AppRawAutocomplete] callback that converts an option value to
/// a string which can be displayed in the widget's options menu.
///
/// See also:
///
///   * [AppRawAutocomplete.displayStringForOption], which is of this type.
typedef AutocompleteOptionToString<T extends Object> = String Function(
    T option);

/// A direction in which to open the options-view overlay.
///
/// See also:
///
///  * [AppRawAutocomplete.optionsViewOpenDirection], which is of this type.
///  * [AppRawAutocomplete.optionsViewBuilder] to specify how to build the
///    selectable-options widget.
///  * [AppRawAutocomplete.fieldViewBuilder] to optionally specify how to build the
///    corresponding field widget.
enum OptionsViewOpenDirection {
  /// Open upward.
  ///
  /// The bottom edge of the options view will align with the top edge
  /// of the text field built by [AppRawAutocomplete.fieldViewBuilder].
  up,

  /// Open downward.
  ///
  /// The top edge of the options view will align with the bottom edge
  /// of the text field built by [AppRawAutocomplete.fieldViewBuilder].
  down,
}

/// {@template flutter.widgets.AppRawAutocomplete.AppRawAutocomplete}
/// A widget for helping the user make a selection by entering some text and
/// choosing from among a list of options.
///
/// The user's text input is received in a field built with the
/// [fieldViewBuilder] parameter. The options to be displayed are determined
/// using [optionsBuilder] and rendered with [optionsViewBuilder].
/// {@endtemplate}
///
/// This is a core framework widget with very basic UI.
///
/// {@tool dartpad}
/// This example shows how to create a very basic autocomplete widget using the
/// [fieldViewBuilder] and [optionsViewBuilder] parameters.
///
/// ** See code in examples/api/lib/widgets/autocomplete/raw_autocomplete.0.dart **
/// {@end-tool}
///
/// The type parameter T represents the type of the options. Most commonly this
/// is a String, as in the example above. However, it's also possible to use
/// another type with a `toString` method, or a custom [displayStringForOption].
/// Options will be compared using `==`, so it may be beneficial to override
/// [Object.==] and [Object.hashCode] for custom types.
///
/// {@tool dartpad}
/// This example is similar to the previous example, but it uses a custom T data
/// type instead of directly using String.
///
/// ** See code in examples/api/lib/widgets/autocomplete/raw_autocomplete.1.dart **
/// {@end-tool}
///
/// {@tool dartpad}
/// This example shows the use of AppRawAutocomplete in a form.
///
/// ** See code in examples/api/lib/widgets/autocomplete/raw_autocomplete.2.dart **
/// {@end-tool}
///
/// See also:
///
///  * [Autocomplete], which is a Material-styled implementation that is based
/// on AppRawAutocomplete.
class AppRawAutocomplete<T extends Object> extends StatefulWidget {
  /// Create an instance of AppRawAutocomplete.
  ///
  /// [displayStringForOption], [optionsBuilder] and [optionsViewBuilder] must
  /// not be null.
  const AppRawAutocomplete({
    super.key,
    required this.optionsViewBuilder,
    required this.optionsBuilder,
    this.optionsViewOpenDirection = OptionsViewOpenDirection.down,
    this.displayStringForOption = defaultStringForOption,
    this.fieldViewBuilder,
    this.focusNode,
    this.onSelected,
    this.textEditingController,
    this.initialValue,
    this.controller,
  })  : assert(
          fieldViewBuilder != null ||
              (key != null &&
                  focusNode != null &&
                  textEditingController != null),
          'Pass in a fieldViewBuilder, or otherwise create a separate field and pass in the FocusNode, TextEditingController, and a key. Use the key with AppRawAutocomplete.onFieldSubmitted.',
        ),
        assert((focusNode == null) == (textEditingController == null));

  final AutocompleteFieldViewBuilder? fieldViewBuilder;
  final FocusNode? focusNode;
  final AutocompleteOptionsViewBuilder<T> optionsViewBuilder;
  final OptionsViewOpenDirection optionsViewOpenDirection;
  final AutocompleteOptionToString<T> displayStringForOption;
  final void Function(T?)? onSelected;
  final AutocompleteOptionsBuilder<T> optionsBuilder;
  final TextEditingController? textEditingController;
  final T? initialValue;
  final AutoCompleteFieldController? controller;
  static void onFieldSubmitted<T extends Object>(GlobalKey key) {
    final _RawAutocompleteState<T> rawAutocomplete =
        key.currentState! as _RawAutocompleteState<T>;
    rawAutocomplete._onFieldSubmitted();
  }

  /// The default way to convert an option to a string in
  /// [displayStringForOption].
  ///
  /// Uses the `toString` method of the given `option`.
  static String defaultStringForOption(Object? option) {
    return option.toString();
  }

  @override
  State<AppRawAutocomplete<T>> createState() => _RawAutocompleteState<T>();
}

class _RawAutocompleteState<T extends Object>
    extends State<AppRawAutocomplete<T>> {
  final GlobalKey _fieldKey = GlobalKey();
  final LayerLink _optionsLayerLink = LayerLink();
  late TextEditingController _textEditingController;
  late FocusNode _focusNode;
  late final Map<Type, Action<Intent>> _actionMap;
  late final _AutocompleteCallbackAction<AutocompletePreviousOptionIntent>
      _previousOptionAction;
  late final _AutocompleteCallbackAction<AutocompleteNextOptionIntent>
      _nextOptionAction;
  late final _AutocompleteCallbackAction<DismissIntent> _hideOptionsAction;
  Iterable<T> _options = Iterable<T>.empty();
  T? _selection;
  bool _userHidOptions = false;
  String _lastFieldText = '';
  final ValueNotifier<int> _highlightedOptionIndex = ValueNotifier<int>(0);

  static const Map<ShortcutActivator, Intent> _shortcuts =
      <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.arrowUp):
        AutocompletePreviousOptionIntent(),
    SingleActivator(LogicalKeyboardKey.arrowDown):
        AutocompleteNextOptionIntent(),
  };

  // The OverlayEntry containing the options.
  OverlayEntry? _floatingOptions;

  // True iff the state indicates that the options should be visible.
  bool get _shouldShowOptions {
    return !_userHidOptions && _focusNode.hasFocus;
  }

  bool _loading = false;

  // Called when _textEditingController changes.
  Future<void> _onChangedField() async {
    final TextEditingValue value = _textEditingController.value;
    _loading = true;

    _updateOverlay();
    _updateActions();
    EasyDebounce.debounce('app-autocomplete', Duration(milliseconds: 250),
        () async {
      if (!mounted) {
        return;
      }

      final Iterable<T> options = await widget.optionsBuilder(
        value, true
      );
      if (!mounted) {
        return;
      }
      _options = options;
      _updateHighlight(_highlightedOptionIndex.value);
      // if (_selection != null &&
      //     value.text != widget.displayStringForOption(_selection!)) {
      //   _selection = null;
      // }

      // Make sure the options are no longer hidden if the content of the field
      // changes (ignore selection changes).
      if (value.text != _lastFieldText) {
        _userHidOptions = false;
        _lastFieldText = value.text;
      }
      _loading = false;
      _updateActions();
      _updateOverlay();
    });
  }

  // Called when the field's FocusNode changes.
  void _onChangedFocus() {
    // Options should no longer be hidden when the field is re-focused.
    _userHidOptions = !_focusNode.hasFocus;
    _updateActions();
    _updateOverlay();
    if (_focusNode.hasFocus == true) {
      _onChangedField();
    } else {
      // _textEditingController.value = TextEditingValue.empty;
    }
  }

  // Called from fieldViewBuilder when the user submits the field.
  void _onFieldSubmitted() {
    if (_options.isEmpty || _userHidOptions) {
      return;
    }
    _select(_options.elementAt(_highlightedOptionIndex.value));
  }

  // Select the given option and update the widget.
  void _select(T nextSelection) {
    if (nextSelection == _selection) {
      return;
    }
    _textEditingController.value = TextEditingValue.empty;
    _selection = nextSelection;
    // final String selectionString = widget.displayStringForOption(nextSelection);
    if (mounted) {
      setState(() {});
    }

    _focusNode.unfocus();
    _updateActions();
    _updateOverlay();
    widget.onSelected?.call(_selection!);
  }

  void _updateHighlight(int newIndex) {
    _highlightedOptionIndex.value =
        _options.isEmpty ? 0 : newIndex % _options.length;
  }

  void _highlightPreviousOption(AutocompletePreviousOptionIntent intent) {
    if (_userHidOptions) {
      _userHidOptions = false;
      _updateActions();
      _updateOverlay();
      return;
    }
    _updateHighlight(_highlightedOptionIndex.value - 1);
  }

  void _highlightNextOption(AutocompleteNextOptionIntent intent) {
    if (_userHidOptions) {
      _userHidOptions = false;
      _updateActions();
      _updateOverlay();
      return;
    }
    _updateHighlight(_highlightedOptionIndex.value + 1);
  }

  Object? _hideOptions(DismissIntent intent) {
    if (!_userHidOptions) {
      _userHidOptions = true;
      _updateActions();
      _updateOverlay();
      return null;
    }
    return Actions.invoke(context, intent);
  }

  void _setActionsEnabled(bool enabled) {
    // The enabled state determines whether the action will consume the
    // key shortcut or let it continue on to the underlying text field.
    // They should only be enabled when the options are showing so shortcuts
    // can be used to navigate them.
    _previousOptionAction.enabled = enabled;
    _nextOptionAction.enabled = enabled;
    _hideOptionsAction.enabled = enabled;
  }

  void _loadMore(){
    final TextEditingValue value = _textEditingController.value;

    EasyDebounce.debounce('app-autocomplete', Duration(milliseconds: 250),
        () async {
      if (!mounted) {
        return;
      }

      final Iterable<T> options = await widget.optionsBuilder(
        value, false
      );
      if (!mounted) {
        return;
      }
      _options = options;
      _updateHighlight(_highlightedOptionIndex.value);
      _updateOverlay();
    });

  }

  void _updateActions() {
    _setActionsEnabled(
        _focusNode.hasFocus && _selection == null && _options.isNotEmpty);
  }

  bool _floatingOptionsUpdateScheduled = false;
  // Hide or show the options overlay, if needed.
  void _updateOverlay() {
    if (SchedulerBinding.instance.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      if (!_floatingOptionsUpdateScheduled) {
        _floatingOptionsUpdateScheduled = true;
        SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
          _floatingOptionsUpdateScheduled = false;
          _updateOverlay();
        }, debugLabel: 'RawAutoComplete.updateOverlay');
      }
      return;
    }

    _floatingOptions?.remove();
    _floatingOptions?.dispose();
    if (_shouldShowOptions) {
      final OverlayEntry newFloatingOptions = OverlayEntry(
        builder: (BuildContext context) {
          return CompositedTransformFollower(
            link: _optionsLayerLink,
            showWhenUnlinked: false,
            targetAnchor: switch (widget.optionsViewOpenDirection) {
              OptionsViewOpenDirection.up => Alignment.topLeft,
              OptionsViewOpenDirection.down => Alignment.bottomLeft,
            },
            followerAnchor: switch (widget.optionsViewOpenDirection) {
              OptionsViewOpenDirection.up => Alignment.bottomLeft,
              OptionsViewOpenDirection.down => Alignment.topLeft,
            },
            child: TextFieldTapRegion(
              child: AutocompleteHighlightedOption(
                  highlightIndexNotifier: _highlightedOptionIndex,
                  child: Builder(builder: (BuildContext context) {
                    return widget.optionsViewBuilder(
                        context, _select, _options, _loading,_loadMore);
                  })),
            ),
          );
        },
      );
      Overlay.of(context, rootOverlay: true, debugRequiredFor: widget)
          .insert(newFloatingOptions);
      _floatingOptions = newFloatingOptions;
    } else {
      _floatingOptions = null;
    }
  }

  // Handle a potential change in textEditingController by properly disposing of
  // the old one and setting up the new one, if needed.
  void _updateTextEditingController(
      TextEditingController? old, TextEditingController? current) {
    if ((old == null && current == null) || old == current) {
      return;
    }
    if (old == null) {
      _textEditingController.removeListener(_onChangedField);
      _textEditingController.dispose();
      _textEditingController = current!;
    } else if (current == null) {
      _textEditingController.removeListener(_onChangedField);
      _textEditingController = TextEditingController();
    } else {
      _textEditingController.removeListener(_onChangedField);
      _textEditingController = current;
    }
    _textEditingController.addListener(_onChangedField);
  }

  // Handle a potential change in focusNode by properly disposing of the old one
  // and setting up the new one, if needed.
  void _updateFocusNode(FocusNode? old, FocusNode? current) {
    if ((old == null && current == null) || old == current) {
      return;
    }
    if (old == null) {
      _focusNode.removeListener(_onChangedFocus);
      _focusNode.dispose();
      _focusNode = current!;
    } else if (current == null) {
      _focusNode.removeListener(_onChangedFocus);
      _focusNode = FocusNode();
    } else {
      _focusNode.removeListener(_onChangedFocus);
      _focusNode = current;
    }
    _focusNode.addListener(_onChangedFocus);
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      _selection = widget.initialValue;
    }
    widget.controller?.reset = reset;
    _textEditingController =
        widget.textEditingController ?? TextEditingController();
    _textEditingController.addListener(_onChangedField);
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onChangedFocus);
    _previousOptionAction =
        _AutocompleteCallbackAction<AutocompletePreviousOptionIntent>(
            onInvoke: _highlightPreviousOption);
    _nextOptionAction =
        _AutocompleteCallbackAction<AutocompleteNextOptionIntent>(
            onInvoke: _highlightNextOption);
    _hideOptionsAction =
        _AutocompleteCallbackAction<DismissIntent>(onInvoke: _hideOptions);
    _actionMap = <Type, Action<Intent>>{
      AutocompletePreviousOptionIntent: _previousOptionAction,
      AutocompleteNextOptionIntent: _nextOptionAction,
      DismissIntent: _hideOptionsAction,
    };
    _updateActions();
    _updateOverlay();
  }

  @override
  void didUpdateWidget(AppRawAutocomplete<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != null) {
      _selection = widget.initialValue;
    }
    _updateTextEditingController(
      oldWidget.textEditingController,
      widget.textEditingController,
    );
    _updateFocusNode(oldWidget.focusNode, widget.focusNode);
    _updateActions();
    _updateOverlay();
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_onChangedField);
    if (widget.textEditingController == null) {
      _textEditingController.dispose();
    }
    _focusNode.removeListener(_onChangedFocus);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    _floatingOptions?.remove();
    _floatingOptions?.dispose();
    _floatingOptions = null;
    _highlightedOptionIndex.dispose();
    super.dispose();
  }

  void reset() {
    _selection = null;
    _textEditingController.text = '';
    widget.onSelected?.call(null);
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldTapRegion(
      child: Container(
        key: _fieldKey,
        child: Shortcuts(
          shortcuts: _shortcuts,
          child: Actions(
            actions: _actionMap,
            child: CompositedTransformTarget(
              link: _optionsLayerLink,
              child: widget.fieldViewBuilder == null
                  ? const SizedBox.shrink()
                  : widget.fieldViewBuilder!(
                      context,
                      _textEditingController,
                      _focusNode,
                      _onFieldSubmitted,
                      _selection != null
                          ? widget.displayStringForOption(_selection!)
                          : ''),
            ),
          ),
        ),
      ),
    );
  }
}

class _AutocompleteCallbackAction<T extends Intent> extends CallbackAction<T> {
  _AutocompleteCallbackAction({
    required super.onInvoke,
    this.enabled = true,
  });

  bool enabled;

  @override
  bool isEnabled(covariant T intent) => enabled;

  @override
  bool consumesKey(covariant T intent) => enabled;
}

/// An [Intent] to highlight the previous option in the autocomplete list.
class AutocompletePreviousOptionIntent extends Intent {
  /// Creates an instance of AutocompletePreviousOptionIntent.
  const AutocompletePreviousOptionIntent();
}

/// An [Intent] to highlight the next option in the autocomplete list.
class AutocompleteNextOptionIntent extends Intent {
  /// Creates an instance of AutocompleteNextOptionIntent.
  const AutocompleteNextOptionIntent();
}
