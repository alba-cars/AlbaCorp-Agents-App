import 'package:intl/intl.dart';

extension CurrencyFormatter on num {
  String get currency => NumberFormat('#,###,###.##').format(this);
}
