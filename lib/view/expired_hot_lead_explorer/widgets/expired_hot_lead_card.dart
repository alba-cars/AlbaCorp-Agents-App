import 'package:flutter/material.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/widgets/button.dart';

class LeadExpirationCardTheme {
  final Color primaryColor;
  final Color backgroundColor;
  final Color textColor;
  final Color secondaryTextColor;
  final Color chipBackgroundColor;
  final Color chipTextColor;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final Color labelColor;

  const LeadExpirationCardTheme({
    this.primaryColor = const Color(0xFF6750A4),
    this.backgroundColor = Colors.white,
    this.textColor = const Color(0xFF1C1B1F),
    this.secondaryTextColor = const Color(0xFF49454F),
    this.chipBackgroundColor = const Color(0xFFE8DEF8),
    this.chipTextColor = const Color(0xFF6750A4),
    this.buttonBackgroundColor = const Color(0xFF6750A4),
    this.buttonTextColor = Colors.white,
    this.labelColor = const Color(0xFF6D6D6D),
  });
}

class ExpiredHotLeadCard extends StatelessWidget {
  final String leadSource;
  final String name;
  final String agentName;
  final String agentPhone;
  final String lastExpiredAt;
  final int expirationCount;
  final Future<void> Function() onAssign;
  final String agentInitials;
  final LeadExpirationCardTheme theme;

  const ExpiredHotLeadCard({
    Key? key,
    required this.leadSource,
    required this.name,
    required this.agentName,
    required this.agentPhone,
    required this.lastExpiredAt,
    required this.expirationCount,
    required this.onAssign,
    required this.agentInitials,
    this.theme = const LeadExpirationCardTheme(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: theme.primaryColor.withOpacity(0.1),
          width: 1,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: theme.chipBackgroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    leadSource,
                    style: TextStyle(
                      color: theme.chipTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: theme.textColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            
            // Agent Info Row
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 12,
                color: theme.secondaryTextColor,
              ),
              child: Row(
                children: [
                  Text('Last assigned:'),
                  const SizedBox(width: 4),
                  CircleAvatar(
                    backgroundColor: theme.secondaryTextColor.withOpacity(0.1),
                    radius: 12,
                    backgroundImage: NetworkImage(
                      "${getIt<String>(instanceName: "AwsBucket")}$agentInitials",
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(agentName),
                  const SizedBox(width: 4),
                  Text('•'),
                  const SizedBox(width: 4),
                  Text(agentPhone),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // Expiration Info Row
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 12,
                color: theme.secondaryTextColor,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 14,
                    color: theme.secondaryTextColor,
                  ),
                  const SizedBox(width: 4),
                  Text(lastExpiredAt),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.repeat,
                    size: 14,
                    color: theme.secondaryTextColor,
                  ),
                  const SizedBox(width: 4),
                  Text('$expirationCount ${expirationCount == 1 ? 'time' : 'times'}'),
                  const SizedBox(width: 8),
                  Expanded(
                    child: AppPrimaryButton(
                      height: 30,
                      onTap: onAssign,
                     
                      text: 
                        'Assign to me',
                      
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}