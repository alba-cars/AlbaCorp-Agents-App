import 'package:flutter/material.dart';

Color listingStatusContainerColor(String status) {
  switch (status) {
    case 'Inactive':
      return Colors.grey[100]!;
    case 'Draft':
      return Colors.blue[100]!;
    case 'Published':
      return Colors.green[100]!;
    case 'Unpublished':
      return Colors.red[100]!;
    default:
      return Colors.grey[100]!;
  }
}

Color listingStatusBorderColor(String status) {
  switch (status) {
    case 'Inactive':
      return Colors.grey[500]!;
    case 'Draft':
      return Colors.blue[500]!;
    case 'Published':
      return Colors.green[500]!;
    case 'Unpublished':
      return Colors.red[500]!;
    default:
      return Colors.grey[500]!;
  }
}
