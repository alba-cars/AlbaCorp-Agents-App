import 'dart:math';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyTextInputFormatter extends TextInputFormatter {
  /// Builds an CurrencyTextInputFormatter with the following parameters.
  ///
  /// [locale] argument is used to locale of NumberFormat currency.
  ///
  /// [name] argument is used to locale of NumberFormat currency.
  ///
  /// [symbol] argument is used to symbol of NumberFormat currency.
  ///
  /// [decimalDigits] argument is used to decimalDigits of NumberFormat currency.
  ///
  /// [customPattern] argument is used to locale of NumberFormat currency.
  ///
  /// [turnOffGrouping] argument is used to locale of NumberFormat currency.
  CurrencyTextInputFormatter({
    this.locale,
    this.name,
    this.symbol,
    this.decimalDigits,
    this.customPattern,
    this.turnOffGrouping = false,
    this.enableNegative = true,
  });

  final String? locale;

  final String? name;

  final String? symbol;

  /// Defaults `decimalDigits` is null.
  final int? decimalDigits;

  final String? customPattern;

  final bool turnOffGrouping;

  final bool enableNegative;

  num _newNum = 0;
  String _newString = '';
  bool _isNegative = false;

  void _formatter(String newText) {
    final NumberFormat format =
        NumberFormat.simpleCurrency(decimalDigits: 0, name: '');
    if (turnOffGrouping) {
      format.turnOffGrouping();
    }

    _newNum = num.tryParse(newText) ?? 0;
    if (format.decimalDigits! > 0) {
      _newNum /= pow(10, format.decimalDigits!);
    }
    _newString = (_isNegative ? '-' : '') + format.format(_newNum).trim();
  }

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final bool isRemovedCharacter =
        oldValue.text.length - 1 == newValue.text.length &&
            oldValue.text.startsWith(newValue.text);

    if (enableNegative) {
      _isNegative = newValue.text.startsWith('-');
    } else {
      _isNegative = false;
    }

    String newText = newValue.text.replaceAll(RegExp('[^0-9]'), '');

    if (isRemovedCharacter && !_lastCharacterIsDigit(oldValue.text)) {
      final int length = newText.length - 1;
      newText = newText.substring(0, length > 0 ? length : 0);
    }

    _formatter(newText);

    if (newText.trim() == '' || newText == '00' || newText == '000') {
      return TextEditingValue(
        text: _isNegative ? '-' : '',
        selection: TextSelection.collapsed(offset: _isNegative ? 1 : 0),
      );
    }

    return TextEditingValue(
      text: _newString,
      selection: TextSelection.collapsed(offset: _newString.length),
    );
  }

  static bool _lastCharacterIsDigit(String text) {
    final String lastChar = text.substring(text.length - 1);
    return RegExp('[0-9]').hasMatch(lastChar);
  }

  /// Get String type value with format such as `$ 2,000.00`
  String getFormattedValue() {
    return _newString;
  }

  /// Get num type value without format such as `2000.00`
  num getUnformattedValue() {
    return _isNegative ? (_newNum * -1) : _newNum;
  }

  /// Method for formatting value.
  /// You can use initialValue with this method.
  String format(String value) {
    if (enableNegative) {
      _isNegative = value.startsWith('-');
    } else {
      _isNegative = false;
    }

    final String newText = value.replaceAll(RegExp('[^0-9]'), '');
    _formatter(newText);
    return _newString;
  }

  /// Method for formatting value.
  /// You can use initialValue(double) with this method.
  String formatDouble(double? value) {
    if (enableNegative) {
      _isNegative = value?.isNegative ?? false;
    } else {
      _isNegative = false;
    }

    final String newText = value
            ?.toStringAsFixed(decimalDigits ?? 0)
            .replaceAll(RegExp('[^0-9]'), '') ??
        '';

    return format(newText);
  }
}
