import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/model/property_card_log_model.dart';
import 'package:real_estate_app/view/property_card_details/helpers/status_helpers.dart';
import 'package:recase/recase.dart';

class PropertyActivitySection extends StatelessWidget {
  final List<PropertyCardLog> logs;

  const PropertyActivitySection({
    Key? key,
    required this.logs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header with count badge
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activity History',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '${logs.length}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Empty state with minimal height
          if (logs.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.history_outlined,
                        size: 20,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 8),
                      Text(
                        'No activity history',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          // Activity timeline in a single card with dividers
          if (logs.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.grey[300]!),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: logs.asMap().entries.map((entry) {
                      final index = entry.key;
                      final log = entry.value;

                      return Column(
                        children: [
                          _buildCompactActivityItem(context, log),
                          // Add divider between items (except last one)
                          if (index < logs.length - 1)
                            Divider(height: 8, thickness: 0.5),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),

          SizedBox(height: 8), // Bottom spacing
        ],
      ),
    );
  }

  Widget _buildCompactActivityItem(BuildContext context, PropertyCardLog log) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Activity type icon with colored background
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: getActivityColor(log.type),
              shape: BoxShape.circle,
            ),
            child: Icon(
              getActivityIcon(log.type),
              color: Colors.white,
              size: 12,
            ),
          ),
          SizedBox(width: 8),

          // Main content column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header row with name, type, and date
                Row(
                  children: [
                    // Name with type badge
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "${log.createdBy?.firstName ?? "System"} ${log.createdBy?.lastName ?? ""}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                            TextSpan(
                              text: " • ",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: log.type.titleCase,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // Date in compact format
                    Text(
                      DateFormat.MMMd().format(DateTime.parse(log.createdAt)),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                // Message with padding
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    log.message,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
