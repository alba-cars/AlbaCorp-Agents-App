// lib/features/activities/presentation/widgets/activity_card.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../../model/activity_model.dart';


class ActivityCard extends StatelessWidget {
  final Activity activity;
  final VoidCallback? onEdit;
  final VoidCallback? onComplete;

  const ActivityCard({
    Key? key,
    required this.activity,
    this.onEdit,
    this.onComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: _getBorderColor(context),
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: (){
          if(activity.lead?.currentAgent?.id == getIt<AuthBloc>().state.agent?.id){
          context.pushNamed(LeadDetailScreen.routeName,pathParameters: {'id':activity.userId});
          }else{
            showSnackbar(context, "Lead is no longer with you", SnackBarType.failure);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            _buildBody(context),
            if (activity.notes?.isNotEmpty ?? false)
              _buildNotes(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _getHeaderColor(context),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          _buildTypeIcon(),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getActivityTitle(),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                if (activity.lead != null) ...[
                  const SizedBox(height: 4),
                  Text(
                     ("${activity.lead!.firstName} ${activity.lead!.lastName}"),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                ],
              ],
            ),
          ),
          _buildStatusBadge(context),
        ],
      ),
    );
  }

  Widget _buildTypeIcon() {
    IconData iconData = _getTypeIcon();
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        iconData,
        size: 24,
        color: _getTypeColor(),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoRow(context),
          if (activity.propertyType != null || activity.propertyListId != null) ...[
            const SizedBox(height: 8),
            _buildPropertyInfo(context),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          size: 16,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 4),
        Text(
         DateFormat.yMd( ).add_Hms().format(activity.date),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        if (activity.overdueAt != null) ...[
          const SizedBox(width: 16),
          Icon(
            Icons.warning_amber_rounded,
            size: 16,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(width: 4),
          Text(
            'Overdue',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildPropertyInfo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Row(
        children: [
          Icon(
            Icons.home_outlined,
            size: 16,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              activity.propertyType ?? 'Property Details',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTags(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: (activity.tags ?? []).map((tag) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            tag,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildNotes(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
        border: Border(
          top: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notes',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            activity.notes ?? '',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  // Widget_buildFooter(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.all(12),
  //     decoration: BoxDecoration(
  //       border: Border(
  //         top: BorderSide(color: Theme.of(context).dividerColor),
  //       ),
  //     ),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         if (activity.status != 'Completed') ...[
  //           Flexible(
  //             child: OutlinedButton.icon(
  //               onPressed: onEdit,
  //               icon: const Icon(Icons.edit_outlined),
  //               label: const Text('Edit'),
  //             ),
  //           ),
  //           const SizedBox(width: 8),
  //           FilledButton.icon(
  //             onPressed: onComplete,
  //             icon: const Icon(Icons.check_circle_outline),
  //             label: const Text('Complete'),
  //           ),
  //         ],
  //       ],
  //     ),
  //   );
  // }

  Color _getBorderColor(BuildContext context) {
    if (activity.overdueAt != null && activity.status != 'Completed') {
      return Theme.of(context).colorScheme.error.withOpacity(0.5);
    }
    return Theme.of(context).dividerColor;
  }

  Color _getHeaderColor(BuildContext context) {
    switch (activity.status.toLowerCase()) {
      case 'completed':
        return Colors.green.withOpacity(0.1);
      case 'pending':
        if (activity.overdueAt != null) {
          return Colors.red.withOpacity(0.1);
        }
        return Colors.orange.withOpacity(0.1);
      default:
        return Theme.of(context).colorScheme.surface;
    }
  }

  Widget _buildStatusBadge(BuildContext context) {
    Color statusColor;
    switch (activity.status.toLowerCase()) {
      case 'completed':
        statusColor = Colors.green;
        break;
      case 'pending':
        statusColor = activity.overdueAt != null ? Colors.red : Colors.orange;
        break;
      default:
        statusColor = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: statusColor.withOpacity(0.2)),
      ),
      child: Text(
        activity.status,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: statusColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  IconData _getTypeIcon() {
    switch (activity.type.toLowerCase()) {
      case 'call':
        return Icons.phone;
      case 'meeting':
        return Icons.meeting_room;
      case 'viewing':
        return Icons.home;
      case 'whatsapp':
        return Icons.follow_the_signs;
      case 'email':
        return Icons.email;
      default:
        return Icons.assignment;
    }
  }

  Color _getTypeColor() {
    switch (activity.type.toLowerCase()) {
      case 'call':
        return Colors.blue;
      case 'meeting':
        return Colors.purple;
      case 'viewing':
        return Colors.green;
      case 'whatsapp':
        return Colors.orange;
      case 'email':
        return Colors.teal;
      default:
        return Colors.grey;
    }
  }

  String _getActivityTitle() {
    switch (activity.type.toLowerCase()) {
      case 'call':
        return 'Phone Call';
      case 'meeting':
        return 'Meeting';
      case 'viewing':
        return 'Property Viewing';
      case 'whatsapp':
        return 'WhatsApp';
      case 'email':
        return 'Email Communication';
      default:
        return activity.type;
    }
  }
}