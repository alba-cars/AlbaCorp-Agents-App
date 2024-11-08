import 'package:currency_formatter/currency_formatter.dart';

class CurrencyFormatterHelper {
  static final CurrencyFormat currencySettings = CurrencyFormat(
    code: 'AED',
    symbol: 'AED',
    symbolSide: SymbolSide.left,
    thousandSeparator: '.',
    decimalSeparator: ',',
    symbolSeparator: ' ',
  );

  static formatCurrency(amount, {bool compact = true}) {
    return CurrencyFormatter.format(amount, currencySettings, compact: true);
  }
}
