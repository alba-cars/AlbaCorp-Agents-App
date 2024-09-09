import 'package:flutter/material.dart' as pw;
import 'package:real_estate_app/model/property_model.dart';

class ListingDetailPdfView extends pw.StatelessWidget {
  final Property property;
  const ListingDetailPdfView({super.key, required this.property});

  @override
  pw.Widget build(pw.BuildContext context) {
    return pw.Column(children: [
      getBaseInfo(),
    ]);
  }

  pw.Widget getBaseInfo() {
    return pw.Column(children: [pw.Text("")]);
  }

  // String getPricingText() {
  //   if (property.listingType == "rent") {
  //     return "AED ${property.askingPrice?.currency} Per Year";
  //   }
  // }
}
