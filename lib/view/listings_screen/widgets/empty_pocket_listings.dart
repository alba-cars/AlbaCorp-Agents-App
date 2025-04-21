import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/space.dart';

/// Empty state UI when no pocket listings are available
class EmptyState extends StatelessWidget {
  const EmptyState({
    Key? key,
    required this.onAddPressed,
  }) : super(key: key);

  final VoidCallback onAddPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIcon(context),
          SizedBox(height: 16),
          _buildMessage(),
          SizedBox(height: 24),
          _buildAddButton(context),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Icon(
      Icons.folder_open_outlined,
      size: 64,
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
    );
  }

  Widget _buildMessage() {
    return Text(
      'No pocket listings available',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.grey[600],
      ),
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return AppPrimaryButton(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      text: 'Add Pocket Listing',
      onTap: onAddPressed,
    );
  }
}
