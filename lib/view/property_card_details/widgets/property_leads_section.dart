import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/property_card_details/widgets/lead_card.dart';
import 'package:real_estate_app/widgets/space.dart';

class PropertyLeadsSection extends StatelessWidget {
  final PropertyCardDetailsModel? propertyCard;
  final List<LeadPropertyCardModel> leads;
  final AppStatus leadsStatus;

  const PropertyLeadsSection({
    Key? key,
    required this.propertyCard,
    required this.leads,
    required this.leadsStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header with count
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Leads',
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
                    '${leads.length}',
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

          // Empty state
          if (leads.isEmpty && leadsStatus == AppStatus.success)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.people_outline,
                      size: 32,
                      color: Colors.grey[400],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'No leads available',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // Loading state
          if (leadsStatus == AppStatus.loading)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
              ),
            ),

          // List of leads in a compact container
          if (leads.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.grey[300]!),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: leads.asMap().entries.map((entry) {
                      final index = entry.key;
                      final lead = entry.value;

                      return Column(
                        children: [
                          LeadCard(
                            propertyCard: propertyCard,
                            lead: lead,
                            index: index,
                          ),
                          // Add divider between items (except last one)
                          if (index < leads.length - 1)
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
}
