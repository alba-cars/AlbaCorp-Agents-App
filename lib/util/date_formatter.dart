import 'package:intl/intl.dart';

extension DateFormatter on DateTime {
  get formatted => DateFormat.yMd().format(this);
}
