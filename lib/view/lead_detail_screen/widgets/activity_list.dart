// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import '../../../model/activity_model.dart';
// import '../../../widgets/space.dart';
// import '../../../widgets/text.dart';

// class ActivityList extends StatelessWidget {
//   const ActivityList({super.key, required this.activities});

//   final List<Activity> activities;

//   @override
//   Widget build(BuildContext context) {
//     final primaryColor = Theme.of(context).colorScheme.primary;
//     final primaryContainerColor =
//         Theme.of(context).colorScheme.primaryContainer;
//     final secondaryColor = Theme.of(context).colorScheme.secondary;
//     return ListView.builder(
//         padding: const EdgeInsets.symmetric(vertical: 0),
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemBuilder: (context, index) {
//           final activity = activities[index];
//           return Stack(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 6),
//                 child: Container(
//                   margin: const EdgeInsetsDirectional.only(start: 80.0),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(6)),
//                   width: double.infinity,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 70,
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 2, vertical: 4),
//                           decoration: BoxDecoration(
//                               // border: Border.all(color: Colors.grey),
//                               borderRadius: BorderRadius.circular(12),
//                               color: Colors.grey[100]),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               switch (activity.type.toLowerCase()) {
//                                 'call' => Icon(
//                                     Icons.call,
//                                     color: Colors.grey,
//                                   ),
//                                 'whatsapp' => ImageIcon(
//                                     AssetImage('assets/images/whatsapp.png'),
//                                     color: Colors.grey,
//                                   ),
//                                 _ => Icon(
//                                     Icons.call,
//                                     color: Colors.grey,
//                                   )
//                               },
//                               VerticalSmallGap(
//                                 adjustment: 0.3,
//                               ),
//                               SmallText(
//                                 text: activity.type,
//                                 textAlign: TextAlign.center,
//                                 color: Colors.grey[800]!,
//                               )
//                             ],
//                           ),
//                         ),
//                         HorizontalSmallGap(),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 8, vertical: 2),
//                                   decoration: BoxDecoration(
//                                       color: primaryContainerColor,
//                                       borderRadius: BorderRadius.circular(4)),
//                                   child: Text(activity.status,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .labelSmall
//                                           ?.copyWith(
//                                             color: primaryColor,
//                                             fontWeight: FontWeight.bold,
//                                           ))),
//                               LabelText(text: activity.createdBy ?? ''),
//                               RichText(
//                                   text: TextSpan(
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .labelMedium,
//                                       text: 'Feedback : ',
//                                       children: [
//                                     TextSpan(
//                                         text: activity.description,
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .labelMedium
//                                             ?.copyWith(color: Colors.blueGrey))
//                                   ]))
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               PositionedDirectional(
//                 top: 50,
//                 width: 70.0,
//                 start: 0.0,
//                 child: Text(
//                   DateFormat.MMMd().format(activity.date),
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyMedium
//                       ?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               PositionedDirectional(
//                 top: index == 0 ? 50 : 0.0,
//                 bottom: index == activities.length - 1 ? null : 0.0,
//                 height: index == activities.length - 1 ? 50 : null,
//                 start: 50.0,
//                 child: Container(
//                   height: double.infinity,
//                   width: 1.0,
//                   color: Theme.of(context).colorScheme.onBackground,
//                 ),
//               ),
//               PositionedDirectional(
//                 top: 50.0,
//                 start: 42.5,
//                 child: Container(
//                   height: 15.0,
//                   width: 15.0,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Theme.of(context).colorScheme.surfaceVariant,
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//         itemCount: activities.length);
//   }
// }
