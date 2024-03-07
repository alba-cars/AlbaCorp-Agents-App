import 'package:flutter/cupertino.dart';

import 'number_field.dart';

class CommissionField extends StatefulWidget {
  const CommissionField(
      {super.key,
      this.commissionPercentage,
      this.price,
      required this.name,
      this.isRequired = false});

  final num? commissionPercentage;
  final num? price;
  final String name;
  final bool isRequired;

  @override
  State<CommissionField> createState() => _CommissionFieldState();
}

class _CommissionFieldState extends State<CommissionField> {
  num? commissionPercentage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NumberField(
          name: widget.name,
          label: 'Agreed Commission',
          unit: '%',
          isRequired: widget.isRequired,
          value: commissionPercentage ?? widget.commissionPercentage,
          onChanged: (value) {
            commissionPercentage = value?.toDouble();
            setState(() {});
          },
        ),
        NumberField(
          name: 'agreedCommissionAmount',
          unit: 'AED',
          value: (commissionPercentage == null &&
                  widget.commissionPercentage == null)
              ? null
              : (commissionPercentage ?? widget.commissionPercentage ?? 0) *
                  (widget.price ?? 0) *
                  .01,
          onChanged: (value) {
            if (value != null && widget.price != null) {
              commissionPercentage = (value / (widget.price ?? 0)) * 100;
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}
