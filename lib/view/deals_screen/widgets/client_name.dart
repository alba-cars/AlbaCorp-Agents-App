import 'package:flutter/material.dart';
import 'package:real_estate_app/model/deal_model.dart';

import '../../../widgets/text.dart';

class ClientName extends StatelessWidget {
  const ClientName({super.key, required this.deal});
  final Deal deal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (deal.category == 'Primary Off Plan Property' ||
            deal.category == 'Listing Acquired') ...[
          SmallText(
            text: 'Client :',
            color: Colors.blueGrey,
          ),
          NormalText(
            text:
                "${deal.client?.firstName ?? ''} ${deal.client?.lastName ?? ''}",
          ),
        ],
        if (deal.category == 'Secondary Market Property') ...[
          SmallText(
            text: 'Buyer Agent :',
            color: Colors.blueGrey,
          ),
          NormalText(
            text:
                "${deal.buyerAssignedAgent?.user.firstName ?? ''} ${deal.buyerAssignedAgent?.user.lastName ?? ''}",
          ),
          if (deal.buyerClientType == 'Alba') ...[
            SmallText(
              text: 'Buyer Client :',
              color: Colors.blueGrey,
            ),
            NormalText(
                text:
                    "${deal.buyerInternalUser?.firstName ?? ''} ${deal.buyerInternalUser?.lastName ?? ''}"),
          ],
          if (deal.buyerClientType == 'External') ...[
            SmallText(
              text: 'Buyer Agency :',
              color: Colors.blueGrey,
            ),
            NormalText(text: "${deal.buyerExternalAgentName ?? ''}"),
          ],
          SmallText(
            text: 'Seller Agent :',
            color: Colors.blueGrey,
          ),
          NormalText(
              text:
                  "${deal.sellerAssignedAgent?.user.firstName ?? ''} ${deal.sellerAssignedAgent?.user.lastName ?? ''}"),
          if (deal.sellerclientType == 'Alba') ...[
            SmallText(
              text: 'Seller Client :',
              color: Colors.blueGrey,
            ),
            NormalText(
                text:
                    "${deal.sellerInternalUser?.firstName ?? ''} ${deal.sellerInternalUser?.lastName ?? ''}"),
          ],
          if (deal.sellerclientType == 'External') ...[
            SmallText(
              text: 'Seller Agency :',
              color: Colors.blueGrey,
            ),
            NormalText(text: "${deal.sellerExternalAgentName ?? ''}"),
          ],
        ]
      ],
    );
  }
}
