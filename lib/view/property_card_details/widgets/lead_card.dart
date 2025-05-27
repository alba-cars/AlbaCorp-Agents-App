import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';
import 'package:real_estate_app/view/property_card_details/helpers/status_helpers.dart';
import 'package:real_estate_app/view/property_card_details/widgets/unlink_confirmation_dialog.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:recase/recase.dart';

class LeadCard extends StatelessWidget {
  final PropertyCardDetailsModel? propertyCard;
  final LeadPropertyCardModel lead;
  final int index;

  const LeadCard({
    Key? key,
    required this.propertyCard,
    required this.lead,
    required this.index,
  }) : super(key: key);

  bool get isMyPropertyCard {
    if (propertyCard == null) return false;

    return (propertyCard?.currentAgent is String &&
            getIt<AuthBloc>().state.agent?.id == propertyCard?.currentAgent) ||
        (propertyCard?.currentAgent is Map &&
            getIt<AuthBloc>().state.agent?.id ==
                propertyCard?.currentAgent['id']);
  }

  bool get isMyLead {
    return lead.lead.currentAgent?.id == getIt<AuthBloc>().state.agent?.id;
  }

  bool get isCurrentOwner {
    return propertyCard?.currentOwner?.id == lead.lead.id;
  }

  bool get isPastOwner {
    return lead.wasOwner && !isCurrentOwner;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Border and background setup
    Color borderColor = isCurrentOwner ? Colors.green[300]! : Colors.grey[300]!;
    Color statusColor = isCurrentOwner
        ? Colors.green[50]!
        : isPastOwner
            ? Colors.grey[100]!
            : Colors.white;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      elevation: 0,
      color: statusColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: borderColor,
          width: isCurrentOwner ? 2 : 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: isMyPropertyCard && isMyLead
            ? () {
                context.pushNamed(LeadDetailScreen.routeName,
                    pathParameters: {'id': lead.lead.id});
              }
            : null,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with lead info and status
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Owner indicator
                  if (isCurrentOwner || isPastOwner)
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0, top: 2.0),
                      child: Icon(
                        isCurrentOwner ? Icons.verified : Icons.history,
                        size: 16,
                        color: isCurrentOwner
                            ? Colors.green[700]
                            : Colors.grey[600],
                      ),
                    ),

                  // Lead name and phone
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${lead.lead.firstName} ${lead.lead.lastName}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (lead.lead.phone != null)
                          Text(
                            lead.lead.phone!,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                      ],
                    ),
                  ),

                  // Lead status pill
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: getLeadStatusColor(lead.lead.leadStatus?.name),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      lead.lead.leadStatus?.name.titleCase ?? 'Unknown',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),

              // Transaction info in compact format
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Text(
                      "AED ${lead.amount?.round().toString() ?? 'N/A'}",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      " • ",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      lead.date != null
                          ? DateFormat.yMd().format(lead.date!)
                          : 'N/A',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              // Action buttons (only shown if it's my property card and lead)
              if (isMyPropertyCard && isMyLead)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _buildActionIcon(
                      context,
                      icon: Icons.check_circle_outline,
                      color: Colors.green,
                      onPressed: isCurrentOwner
                          ? null
                          : () {
                              context
                                  .read<PropertyCardDetailsCubit>()
                                  .verifyLeadAsOwner(
                                      leadCard: lead, index: index);
                            },
                      tooltip: 'Mark as Owner',
                      isDisabled: isCurrentOwner,
                    ),
                    _buildActionIcon(
                      context,
                      icon: Icons.history,
                      color: Colors.orange,
                      onPressed: isPastOwner
                          ? null
                          : () {
                              context
                                  .read<PropertyCardDetailsCubit>()
                                  .markLeadAsPastOwner(
                                      leadCard: lead, index: index);
                            },
                      tooltip: 'Mark as Past Owner',
                      isDisabled: isPastOwner,
                    ),
                    _buildActionIcon(
                      context,
                      icon: Icons.link_off,
                      color: Colors.red,
                      onPressed: () {
                        showUnlinkConfirmationDialog(context, lead);
                      },
                      tooltip: 'Unlink Lead',
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionIcon(
    BuildContext context, {
    required IconData icon,
    required Color color,
    required VoidCallback? onPressed,
    required String tooltip,
    bool isDisabled = false,
  }) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(
            icon,
            size: 18,
            color: isDisabled ? Colors.grey[400] : color,
          ),
        ),
      ),
    );
  }
}
