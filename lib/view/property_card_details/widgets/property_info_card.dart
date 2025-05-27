import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/widgets/space.dart';

class PropertyInfoCard extends StatelessWidget {
  final PropertyCardDetailsModel? propertyCard;

  const PropertyInfoCard({
    Key? key,
    required this.propertyCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final mediaQuery = MediaQuery.of(context);
    final isTablet = mediaQuery.size.width >= 600;

    if (propertyCard == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Property Status
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                propertyCard?.status ?? 'Status Unknown',
                style: textTheme.labelMedium?.copyWith(
                  color: colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (propertyCard?.availableForCheckout == true)
              Container(
                margin: EdgeInsets.only(left: 8),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Available',
                  style: textTheme.labelMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),

        VerticalSmallGap(),

        // Reference Number & Last Updated
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Ref: ${propertyCard?.referenceNumber ?? ""}',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'Updated: ${propertyCard?.updatedAt != null ? DateFormat('dd MMM yyyy').format(propertyCard!.updatedAt!) : "N/A"}',
              style: textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),

        VerticalSmallGap(),

        // Location
        Text(
          '${propertyCard?.community?.community ?? ""}${propertyCard?.building?.name != null && propertyCard!.building!.name.isNotEmpty ? ", ${propertyCard?.building?.name}" : ""}',
          style: textTheme.bodyLarge,
        ),

        VerticalSmallGap(),

        // Property Details Card
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey[300]!),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Property Details',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                VerticalSmallGap(),

                // Key Details Pills
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    if (propertyCard?.propertyType != null)
                      _buildInfoPill(
                        icon: Icons.home_outlined,
                        label: propertyCard!.propertyType!,
                      ),
                    if (propertyCard?.beds != null)
                      _buildInfoPill(
                        icon: Icons.bed_outlined,
                        label:
                            '${propertyCard!.beds} Bed${propertyCard!.beds != "1" ? "s" : ""}',
                      ),
                    if (propertyCard?.baths != null)
                      _buildInfoPill(
                        icon: Icons.bathtub_outlined,
                        label:
                            '${propertyCard!.baths} Bath${propertyCard!.baths != 1 ? "s" : ""}',
                      ),
                    if (propertyCard?.size != null)
                      _buildInfoPill(
                        icon: Icons.square_foot_outlined,
                        label: '${propertyCard!.size} sqft',
                      ),
                  ],
                ),

                Divider(height: 24),

                // Property Pricing
                if (propertyCard?.askingPrice != null ||
                    propertyCard?.agentValutionPrice != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pricing',
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      VerticalSmallGap(adjustment: 0.5),
                      Row(
                        children: [
                          Expanded(
                            child: _buildPriceCard(
                              context: context,
                              label: 'Asking Price',
                              price:
                                  propertyCard?.askingPrice?.currency ?? 'N/A',
                              color: Colors.green[50]!,
                              textColor: Colors.green[700]!,
                            ),
                          ),
                          HorizontalSmallGap(),
                          Expanded(
                            child: _buildPriceCard(
                              context: context,
                              label: 'Agency Valuation',
                              price:
                                  propertyCard?.agentValutionPrice?.currency ??
                                      'N/A',
                              color: Colors.blue[50]!,
                              textColor: Colors.blue[700]!,
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 24),
                    ],
                  ),

                // Location Details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    VerticalSmallGap(),
                    isTablet
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: _buildDetailItem(
                                  label: 'Community',
                                  value: propertyCard?.community?.community ??
                                      'N/A',
                                ),
                              ),
                              HorizontalSmallGap(),
                              Expanded(
                                child: _buildDetailItem(
                                  label:
                                      propertyCard?.building?.name.isNotEmpty ==
                                              true
                                          ? 'Building'
                                          : 'Cluster',
                                  value:
                                      propertyCard?.building?.name.isNotEmpty ==
                                              true
                                          ? propertyCard?.building?.name
                                          : propertyCard?.cluster?.isNotEmpty ==
                                                  true
                                              ? propertyCard?.cluster
                                              : 'N/A',
                                ),
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildDetailItem(
                                label: 'Community',
                                value:
                                    propertyCard?.community?.community ?? 'N/A',
                              ),
                              VerticalSmallGap(adjustment: 0.5),
                              _buildDetailItem(
                                label:
                                    propertyCard?.building?.name.isNotEmpty ==
                                            true
                                        ? 'Building'
                                        : 'Cluster',
                                value: propertyCard
                                            ?.building?.name.isNotEmpty ==
                                        true
                                    ? propertyCard?.building?.name
                                    : propertyCard?.cluster?.isNotEmpty == true
                                        ? propertyCard?.cluster
                                        : 'N/A',
                              ),
                            ],
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoPill({required IconData icon, required String label}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: Colors.grey[700],
          ),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceCard({
    required BuildContext context,
    required String label,
    required String price,
    required Color color,
    required Color textColor,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: textColor.withOpacity(0.8),
            ),
          ),
          SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem({required String label, required String? value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
        Text(
          value ?? 'N/A',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
