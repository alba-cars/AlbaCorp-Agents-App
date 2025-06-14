import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ActivitySortControlWidget extends StatefulWidget {
  const ActivitySortControlWidget({super.key});

  @override
  State<ActivitySortControlWidget> createState() =>
      _ActivitySortControlWidgetState();
}

class _ActivitySortControlWidgetState extends State<ActivitySortControlWidget> {
  int sortOrderGrpVlaue = 0;
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sort by",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                    value: 0,
                    groupValue: sortOrderGrpVlaue,
                    onChanged: (val) {
                      setState(() {
                        sortOrderGrpVlaue = val ?? 0;
                      });
                    }),
                Text("Latest"),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                    value: 1,
                    groupValue: sortOrderGrpVlaue,
                    onChanged: (val) {
                      setState(() {
                        sortOrderGrpVlaue = val ?? 1;
                      });
                    }),
                Text("Oldest"),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
