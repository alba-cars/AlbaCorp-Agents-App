import 'package:flutter/material.dart';

/// Returns appropriate color for lead status
Color getLeadStatusColor(String? status) {
  if (status == null) return Colors.grey;

  switch (status.toLowerCase()) {
    case 'fresh':
      return Colors.blue;
    case 'follow up':
      return Colors.orange;
    case 'appointment':
      return Colors.purple;
    case 'viewing':
      return Colors.teal;
    case 'deal':
      return Colors.indigo;
    case 'won':
      return Colors.green;
    case 'lost':
      return Colors.red;
    case 'disqualified':
      return Colors.brown;
    case 'invalid number':
      return Colors.red[300]!;
    case 'prospect':
      return Colors.cyan;
    case 'negotiating':
      return Colors.deepPurple;
    case 'for listing':
      return Colors.amber;
    default:
      return Colors.grey;
  }
}

/// Returns appropriate icon for activity type
IconData getActivityIcon(String type) {
  switch (type.toLowerCase()) {
    case 'created':
      return Icons.add_circle_outline;
    case 'updated':
      return Icons.edit_outlined;
    case 'checked out':
      return Icons.person_add_outlined;
    case 'checked in':
      return Icons.assignment_return_outlined;
    case 'linked':
      return Icons.link;
    case 'unlinked':
      return Icons.link_off;
    case 'verified':
      return Icons.verified_outlined;
    default:
      return Icons.info_outline;
  }
}

/// Returns appropriate color for activity type
Color getActivityColor(String type) {
  switch (type.toLowerCase()) {
    case 'created':
      return Colors.green;
    case 'updated':
      return Colors.blue;
    case 'checked out':
      return Colors.orange;
    case 'checked in':
      return Colors.purple;
    case 'linked':
      return Colors.teal;
    case 'unlinked':
      return Colors.red;
    case 'verified':
      return Colors.indigo;
    default:
      return Colors.grey;
  }
}

/// Returns property status color
Color getPropertyStatusColor(String? status) {
  if (status == null) return Colors.grey;

  switch (status.toLowerCase()) {
    case 'available':
      return Colors.green;
    case 'rented':
      return Colors.blue;
    case 'sold':
      return Colors.purple;
    case 'under offer':
      return Colors.orange;
    case 'off market':
      return Colors.red;
    case 'draft':
      return Colors.grey;
    default:
      return Colors.grey;
  }
}
