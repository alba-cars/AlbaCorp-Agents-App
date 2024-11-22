import 'package:flutter/material.dart';

class LeadCard extends StatelessWidget {
  const LeadCard({super.key, required this.name, required this.phone, required this.leadSource, required this.assignedAt, required this.dueAt});

  final String name;
  final String phone;
  final String leadSource;
  final DateTime assignedAt;
  final DateTime dueAt;

  @override
  Widget build(BuildContext context) {
    return Card(
 elevation: 0,
 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide(color: Colors.grey[300]!)),
 child: Container(
   padding: EdgeInsets.all(16),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               Text(
                 name,
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                 ),
               ),
              
             ],
           ),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
             decoration: BoxDecoration(
               color: Colors.blue[50],
               borderRadius: BorderRadius.circular(20),
             ),
             child: Text(
               leadSource,
               style: TextStyle(
                 color: Colors.blue,
                 fontWeight: FontWeight.w500,
               ),
             ),
           ),
         ],
       ),
       SizedBox(height: 6),
       Row(
         children: [
           Icon(Icons.phone, size: 16, color: Colors.grey),
           SizedBox(width: 8),
           Text(
             phone,
             style: TextStyle(color: Colors.grey[700]),
           ),
         ],
       ),
       SizedBox(height: 8),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               Icon(Icons.access_time, size: 16, color: Colors.grey),
               SizedBox(width: 8),
               Text(
                 assignedAt.formatTimeDistance(),
                 style: TextStyle(color: Colors.grey[600]),
               ),
             ],
           ),RichText(text: 
           TextSpan(text: "Due " ,
           style:  TextStyle(
               color: Colors.grey,
               fontWeight: FontWeight.w500,
             ),
           children: [
           TextSpan(text: 
             dueAt.formatTimeDistance(),
             style: TextStyle(
               color: dueAt.isDue()? Colors.red:Colors.black,
               fontWeight: FontWeight.w500,
             ),
           ),])),
         ],
       ),
     ],
   ),
 ),
);
  }
}


extension DateTimeExtension on DateTime {
  String formatTimeDistance() {
    final now = DateTime.now();
    final isPast = this.difference(now).inSeconds.isNegative;
    final difference = isPast ? now.difference(this) : this.difference(now);
    
    if (difference.isNegative && !isPast) return 'Overdue';

    if (difference.inMinutes < 60) {
      final mins = difference.inMinutes;
      return isPast ? '$mins minute${mins == 1 ? '' : 's'} ago' : 'in $mins minute${mins == 1 ? '' : 's'}';
    } 
    
    if (difference.inHours < 24) {
      final hours = difference.inHours;
      return isPast ? '$hours hour${hours == 1 ? '' : 's'} ago' : 'in $hours hour${hours == 1 ? '' : 's'}';
    }
    
    if (difference.inDays < 30) {
      final days = difference.inDays;
      return isPast ? '$days day${days == 1 ? '' : 's'} ago' : 'in $days day${days == 1 ? '' : 's'}';
    }
    
    return isPast ? 'Over 30 days ago' : 'Over 30 days ahead';
  }
  bool isDue() {
    final now = DateTime.now();
    final isPast = this.difference(now).inSeconds.isNegative;
    return isPast;
  }
}